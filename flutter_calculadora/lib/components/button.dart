import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  static const dark = Color.fromRGBO(82, 82, 82, 1);
  static const standard = Color.fromRGBO(112, 112, 112, 1);
  static const operation = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) callback;

  const Button(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = standard,
      required this.callback})
      : super(key: key);

  const Button.big(
      {Key? key,
      required this.text,
      this.big = true,
      this.color = standard,
      required this.callback})
      : super(key: key);

  const Button.operationValue(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = operation,
      required this.callback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color),
        //pega o valor que foi clicado
        onPressed: () => callback(text),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 32, fontWeight: FontWeight.w200),
        ),
      ),
    );
  }
}
