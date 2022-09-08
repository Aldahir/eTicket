import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/dashboard/dashboard.dart';
import 'package:eticket/views/events/events.dart';
import 'package:eticket/views/help/help.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Entrar extends StatefulWidget {
  @override
  _EntrarState createState() => _EntrarState();
}

class _EntrarState extends State<Entrar> {
  late TextEditingController _username;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _username = TextEditingController();
    _password = TextEditingController();
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
        automaticallyImplyLeading: false,
        title: Image.asset('assets/img/logo_extended.png',height: 28.0),
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
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: _username,
                  decoration: const InputDecoration(
                    labelText: "Seu nome de usuário",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  obscureText: true,
                  controller: _password,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(), labelText: "Sua senha"),
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
                        action: ()=>Navigator.of(context).push(
                            MaterialPageRoute(builder: (context)=>Eventos())
                        ),
                        texto: "Entrar",
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
