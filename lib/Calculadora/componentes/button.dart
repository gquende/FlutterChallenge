import 'package:flutter/material.dart';

class Button extends StatelessWidget {

  final String text;
  final bool big;
  final Color color; //Atributo responsavel por definir a core do botao

  /* Constantes para definir as cores dos botoes conforme as suas funcionalidades */
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  /*Funcao que callback para retornar que tipo de botao foi pressionado */
  void Function(String command) cb;

  /*Construtores*/
  Button({@required this.text, this.big = false, this.color = DEFAULT, @required this.cb});
  Button.big({@required this.text, this.big = true, this.color = DEFAULT, @required this.cb});
  Button.operation({@required this.text, this.big = false, this.color = OPERATION, @required this.cb});

  @override
  Widget build(BuildContext context) {

    return Expanded(
      flex: big ? 2 : 1,
      child: RaisedButton(
        color: this.color,
        child: Text(
          text,
          style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w200),
        ),
        onPressed: () =>cb(text),
      ),
    );
  }
}
