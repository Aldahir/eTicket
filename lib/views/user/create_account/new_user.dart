import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/dashboard/dashboard.dart';
import 'package:eticket/views/events/events.dart';
import 'package:eticket/views/help/help.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NovoUsusario extends StatefulWidget {
  @override
  NovoUsusarioState createState() => NovoUsusarioState();
}

class NovoUsusarioState extends State<NovoUsusario> {
  late List<TextEditingController> _data;

  late TextEditingController _username;
  late TextEditingController _password;
  late TextEditingController _telefone;
  late TextEditingController _email;
  late TextEditingController _nascimento;
  late TextEditingController _address;

  @override
  void initState() {
    super.initState();
    _data = [
      for (int i = 0; i < 7; i++) TextEditingController(),
    ];
    _username = TextEditingController();
    _password = TextEditingController();

    print(_data);
  }

  void _showSnackBar(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: cor_primaria),
        title: Text(
          'Criar conta',
          style: TextStyle(
            color: cor_primaria,
            fontWeight: FontWeight.bold,
          ),
        ), //Image.asset('assets/img/logo_extended.png', height: 28.0),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Ajuda(),
                    ));
              },
              icon: const Icon(
                Icons.help_outline,
                color: cor_primaria,
              ))
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  controller: _username,
                  decoration: const InputDecoration(
                    labelText: "Seu nome de usuário",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: _password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Sua senha"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  obscureText: true,
                  controller: _data[2],
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Telefone"),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(amc_d_3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: BotaoPrincipal(
                        action: () => Navigator.of(context).push(
                            MaterialPageRoute(builder: (context) => Eventos())),
                        texto: "Seguinte",
                        size: MediaQuery.of(context).size.width,
                        padding: amc_d_3,
                      ),
                    ),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
