import 'package:eticket/utils/constants.dart';
import 'package:flutter/material.dart';

class UserSettings extends StatefulWidget {
  @override
  _UserSettingsState createState() => _UserSettingsState();
}

class _UserSettingsState extends State<UserSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: cor_primaria),
        title: Image.asset('assets/img/logo_extended.png',height: 28.0),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: const Center(
        child: Text("Settings"),
      ),
    );
  }
}
