import 'package:flutter/material.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial(this.trocarTela, this.botaoKeys, {super.key});
  final void Function(Key botaokeys) trocarTela;
  final List<Key> botaoKeys;

  @override
  Widget build(BuildContext context) {
    const double tamanhoBotaoBebidas = 180;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Image(
          image: AssetImage('assets/Tela_inicial_img/Espuma.png'),
        ),
        const Center(
          child: Image(
            image: AssetImage('assets/Tela_inicial_img/Logo2.png'),
          ),
        ),
        const Text(
          'Escolha sua Bebida',
          style: TextStyle(
            color: Color.fromARGB(255, 182, 106, 0),
            fontSize: 24,
            decoration: TextDecoration.none,
          ),
        ),
        Row(
          children: [
            IconButton(
              key: botaoKeys[0],
              onPressed: () {
                trocarTela(botaoKeys[0]);
              },
              iconSize: tamanhoBotaoBebidas,
              icon: Image.asset('assets/Tela_inicial_img/Cerveja.png'),
            ),
            IconButton(
              key: botaoKeys[1],
              onPressed: () {
                trocarTela(botaoKeys[1]);
              },
              iconSize: tamanhoBotaoBebidas,
              icon: Image.asset('assets/Tela_inicial_img/Vinho.png'),
            ),
          ],
        ),
        Row(
          children: [
            IconButton(
              key: botaoKeys[2],
              onPressed: () {
                trocarTela(botaoKeys[2]);
              },
              iconSize: tamanhoBotaoBebidas,
              icon: Image.asset('assets/Tela_inicial_img/Vodka1.png'),
            ),
            IconButton(
              key: botaoKeys[3],
              onPressed: () {
                trocarTela(botaoKeys[3]);
              },
              iconSize: tamanhoBotaoBebidas,
              icon: Image.asset('assets/Tela_inicial_img/Wisky1.png'),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
