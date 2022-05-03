import 'package:flutter_aula_1/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
        icone: 'images/bitcoin.png',
        nome: 'Bitcoin',
        sigla: 'BTC',
        preco: 188661.66),
    Moeda(
        icone: 'images/ethereum.png',
        nome: 'Ethereum',
        sigla: 'ETH',
        preco: 13769.80),
    Moeda(
        icone: 'images/xrp.png',
        nome: 'XRP',
        sigla: 'XRP',
        preco: 0.59428),
    Moeda(
        icone: 'images/cardano.png',
        nome: 'Cardano',
        sigla: 'ADA',
        preco: 3.84),
    Moeda(
        icone: 'images/usdcoin.png',
        nome: 'USD Coin',
        sigla: 'USDC',
        preco: 4.96),
    Moeda(
        icone: 'images/litecoin.png',
        nome: 'Litecoin',
        sigla: 'LTC',
        preco: 480.72),
  ];
}
