import 'package:flutter/material.dart';

import 'package:bebometro/tela_inicial.dart';
import 'package:bebometro/tela_quantidade.dart';

class Bebometro extends StatefulWidget {
  const Bebometro({super.key});

  @override
  State<Bebometro> createState() => _BebometroState();
}

class _BebometroState extends State<Bebometro> {
  var telaAtiva = 'tela-inicial';
  Image imgBebidas = Image.asset('assets/Tela_inicial_img/Cerveja.png');

  final List<Key> botaoKeys = [
    const ValueKey<int>(1),
    const ValueKey<int>(2),
    const ValueKey<int>(3),
    const ValueKey<int>(4),
  ];

  String bebidaSelecionada = '';
  String tamanhoCopo = '';

  void trocarTela(Key botaoKeys) {
    setState(() {
      final int chaveBotao = (botaoKeys as ValueKey<int>).value;
      switch (chaveBotao) {
        case 1:
          telaAtiva = 'quantidade-bebidas';
          bebidaSelecionada = 'Cerveja';
          tamanhoCopo = '1 copo = 350ml';
          break;
        case 2:
          imgBebidas = Image.asset('assets/Tela_inicial_img/Vinho.png');
          telaAtiva = 'quantidade-bebidas';
          bebidaSelecionada = 'Vinho';
          tamanhoCopo = '1 cálice = 80ml';
          break;
        case 3:
          imgBebidas = Image.asset('assets/Tela_inicial_img/Vodka1.png');
          telaAtiva = 'quantidade-bebidas';
          bebidaSelecionada = 'Vodka';
          tamanhoCopo = '1 dose = 50ml';
          break;
        case 4:
          imgBebidas = Image.asset('assets/Tela_inicial_img/Wisky1.png');
          telaAtiva = 'quantidade-bebidas';
          bebidaSelecionada = 'Wisky';
          tamanhoCopo = '1 dose = 50ml';
          break;
        default:
          const Text('Erro 404');
      }
      //final int chaveBotao = (botaoKeys as ValueKey<int>).value;
      //print('Valor da chave: $tamanhoCopo');
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget telaWidget = TelaInicial(trocarTela, botaoKeys);

    if (telaAtiva == 'quantidade-bebidas') {
      telaWidget = TelaQuantidade(bebidaSelecionada,
          imgBebidas: imgBebidas, tamanhoCopo: tamanhoCopo);
    }

    return MaterialApp(
      home: Center(
        child: telaWidget,
      ),
    );
  }
}
