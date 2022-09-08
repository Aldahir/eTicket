import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'package:flutter/material.dart';

class Procurar extends StatefulWidget {
  @override
  _ProcurarState createState() => _ProcurarState();
}

class _ProcurarState extends State<Procurar> {
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
                      builder: (context) => UserSettings(),
                    ));
              },
              icon: const Icon(
                Icons.settings_outlined,
                color: cor_primaria,
              ))
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Procurar"),
      ),
    );
  }
}
