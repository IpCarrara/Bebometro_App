import 'package:flutter/material.dart';
import 'package:bebometro/modelo/resultado_modelo.dart';

class TelaResultado extends StatefulWidget {
  const TelaResultado({required this.resultado, Key? key}) : super(key: key);

  final ResultadoModelo resultado;

  @override
  State<TelaResultado> createState() => _TelaResultadoState();
}

class _TelaResultadoState extends State<TelaResultado> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: true,
          backgroundColor: Colors.transparent,
          flexibleSpace: Stack(
            children: [
              Positioned.fill(
                child: Image.asset(
                  'assets/Tela_inicial_img/Espuma.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    Text(
                      widget.resultado.titulo,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 142, 83, 1),
                        fontSize: 26,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      widget.resultado.textoResuldado,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        decoration: TextDecoration.none,
                        color: Color.fromARGB(255, 182, 106, 0),
                        fontSize: 24,
                      ),
                    ),
                    Image.asset(
                      widget.resultado.imgResuldado,
                      height: 250,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 1),
            ],
          ),
        ),
      ],
    );
  }
}
