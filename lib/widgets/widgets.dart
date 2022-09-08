import 'package:eticket/utils/constants.dart';
import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  const Titulo({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto,
      style: const TextStyle(fontSize: 22.50, color: cor_preto, fontWeight: FontWeight.w900),
      //style: const TextStyle(fontSize: 25, color: Colors.black, letterSpacing: -1, fontWeight: FontWeight.w800)
    );
  }
}

class CardTitulo extends StatelessWidget {
  const CardTitulo({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto,
      style: const TextStyle(
          fontSize: 18.50,
          color: cor_preto,
          fontWeight: FontWeight.w600),
      //style: const TextStyle(fontSize: 25, color: Colors.black, letterSpacing: -1, fontWeight: FontWeight.w800)
    );
  }
}

class Descricao extends StatelessWidget {
  const Descricao({
    Key? key,
    required this.texto,
  }) : super(key: key);

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Text(texto,
      style: TextStyle(
          fontSize: 12.0, color: Colors.grey[600], fontWeight: FontWeight.normal),
      //style: const TextStyle(fontSize: 15, color: Colors.black38, letterSpacing:0, fontWeight: FontWeight.normal)
    );
  }
}

class BotaoPrincipal extends StatelessWidget {
  var action;
  final String texto;
  var size, padding;


  BotaoPrincipal({
    Key? key,
    required this.action,
    required this.texto,
    required this.size, required this.padding
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: padding),
      width: size,
      height: 45.0,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(cor_primaria),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          elevation: MaterialStateProperty.all<double>(0.0),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(
              // height: 1.5,
              fontSize: 20.0,
              fontWeight: FontWeight.w800
            ),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0)
            )
          )
        ),
        onPressed: action,
        child: Text(texto),
      ),
    );
  }
}

class InputText extends StatelessWidget {
  const InputText({Key? key, required this.controlador, required this.tipo})
      : super(key: key);

  final TextEditingController controlador;
  final TextInputType tipo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        keyboardType: tipo,
        controller: controlador,
        decoration: InputDecoration(border: OutlineInputBorder()),
      ),
    );
  }
}