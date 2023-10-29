import 'package:flutter/material.dart';

class TelaErro extends StatelessWidget {
  const TelaErro({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Column(
        children: [
          Image(
            image: AssetImage('assets/Tela_inicial_img/Espuma.png'),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'ERRO',
                  style: TextStyle(
                    fontSize: 50,
                    color: Color.fromARGB(255, 142, 83, 1),
                    fontWeight: FontWeight.w900,
                    decoration: TextDecoration.none,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    'Entre um número válido',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      color: Color.fromARGB(255, 182, 106, 0),
                      fontWeight: FontWeight.w900,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                Image(
                  fit: BoxFit.scaleDown,
                  image: AssetImage('assets/Resultado_img/Fases8.png'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
