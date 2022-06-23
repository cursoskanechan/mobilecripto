import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_aula_1/repositories/moeda_repository.dart';
import 'firebase_options.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_aula_1/configs/app_settings.dart';
import 'package:flutter_aula_1/repositories/conta_repository.dart';
import 'package:flutter_aula_1/repositories/favoritas_repository.dart';
import 'package:flutter_aula_1/services/auth_service.dart';
import 'package:provider/provider.dart';

import 'configs/hive_config.dart';
import 'meu_aplicativo.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  await HiveConfig.start();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => AuthService()),        
        ChangeNotifierProvider(create: (context) => MoedaRepository()),        
        ChangeNotifierProvider(create: (context) => ContaRepository(
          moedas: context.read<MoedaRepository>(),
        )),
        ChangeNotifierProvider(create: (context) => AppsSettings()),
        ChangeNotifierProvider(
          create: (context) => FavoritasRepository(
            auth: context.read<AuthService>(),
            moedas: context.read<MoedaRepository>(),
          ),
        ),
      ],
      child: MeuAplicativo(),
    ),
  );
}
