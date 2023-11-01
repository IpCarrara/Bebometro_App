import 'package:bebometro/dados/dado_resultado.dart';
import 'package:bebometro/modelo/resultado_modelo.dart';
import 'package:bebometro/tela_erro.dart';

import 'package:flutter/material.dart';

import 'package:bebometro/tela_resultado.dart';

class TelaQuantidade extends StatefulWidget {
  const TelaQuantidade(this.bebidaSelecionada,
      {required this.imgBebidas, required this.tamanhoCopo, super.key});
  final Image imgBebidas;
  final String bebidaSelecionada;
  final String tamanhoCopo;

  @override
  State<TelaQuantidade> createState() => _TelaQuantidadeState();
}

class _TelaQuantidadeState extends State<TelaQuantidade> {
  final TextEditingController _controller = TextEditingController();
  int? numeroDoses;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void salvar() {
    setState(
      () {
        String inputText = _controller.text;

        if (inputText.isEmpty) {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const TelaErro(),
            ),
          );
        } else {
          int? parsedInt = int.tryParse(inputText);
          if (parsedInt != null) {
            numeroDoses = parsedInt;

            ResultadoModelo? resultado;

            if (numeroDoses! >= 0) {
              if (numeroDoses == 0) {
                resultado = resultados[7];
              }
              if (numeroDoses == 1) {
                resultado = resultados[0];
              }
              if (numeroDoses == 2) {
                resultado = resultados[1];
              }
              if (numeroDoses == 3) {
                if (widget.bebidaSelecionada == 'Cerveja') {
                  resultado = resultados[1];
                } else {
                  resultado = resultados[2];
                }
              }
              if (numeroDoses == 4) {
                if (widget.bebidaSelecionada == 'Cerveja') {
                  resultado = resultados[2];
                } else {
                  resultado = resultados[3];
                }
              }
              if (numeroDoses == 5) {
                if (widget.bebidaSelecionada == 'Cerveja') {
                  resultado = resultados[3];
                } else {
                  resultado = resultados[4];
                }
              }
              if (numeroDoses == 6) {
                if (widget.bebidaSelecionada == 'Cerveja') {
                  resultado = resultados[4];
                } else {
                  resultado = resultados[5];
                }
              }
              if (numeroDoses == 7) {
                if (widget.bebidaSelecionada == 'Cerveja') {
                  resultado = resultados[5];
                } else {
                  resultado = resultados[6];
                }
              }
              if (numeroDoses! > 7) {
                resultado = resultados[6];
              }

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TelaResultado(resultado: resultado!),
                ),
              );
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TelaErro(),
                ),
              );
            }
          } else {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TelaErro(),
              ),
            );
          }
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 120,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/Tela_inicial_img/Espuma.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 55.0),
              child: Text(
                'Quanto você bebeu?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Color.fromARGB(255, 182, 106, 0),
                  fontSize: 24,
                ),
              ),
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 60,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  child: TextField(
                    decoration: const InputDecoration(
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                      ),
                    ),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 30,
                      height: 1.5,
                      color: Color.fromARGB(255, 182, 106, 0),
                    ),
                    controller: _controller,
                    keyboardType: TextInputType.number,
                  ),
                ),
                const SizedBox(width: 20, height: 16),
                TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 182, 106, 0),
                      foregroundColor: Colors.amber,
                      elevation: 15,
                      shadowColor: Colors.black),
                  onPressed: salvar,
                  child: const Text(
                    'Salvar',
                    style: TextStyle(fontSize: 28),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Text(
              widget.tamanhoCopo,
              textAlign: TextAlign.center,
              style: const TextStyle(
                decoration: TextDecoration.none,
                color: Color.fromARGB(255, 182, 106, 0),
                fontSize: 19,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: widget.imgBebidas.image,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
