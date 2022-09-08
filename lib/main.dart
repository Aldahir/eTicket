import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/user/login/login.dart';
import 'package:eticket/views/user/create_account/new_user.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: eTicket(),
    debugShowCheckedModeBanner: false,
  ));
}

class eTicket extends StatefulWidget {
  const eTicket({Key? key}) : super(key: key);

  State<eTicket> createState() => _eTicketState();
}

class _eTicketState extends State<eTicket> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cor_primaria,
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              flex: 3,
              child: Image.asset(
                "assets/img/logo_extended_white.png",
                width: 250,
              )),
          const Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.all(amc_d_3),
              child: Text(
                'You have pushed the button this many times',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: amc_d_6,
                    color: Colors.white),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    foregroundColor: MaterialStateProperty.all(cor_primaria),
                    elevation: MaterialStateProperty.all<double>(0.0),
                    textStyle: MaterialStateProperty.all<TextStyle>(
                      const TextStyle(
                          height: 1.5,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w800),
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50.0)))),
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => Entrar()));
                },
                child: Text("Entrar"),
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  "Não tem conta de utilizador?",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(
                  width: 2.0,
                ),
                TextButton(
                  style: ButtonStyle(
                    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                        EdgeInsets.zero),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NovoUsusario(),
                      ),
                    );
                  },
                  child: const Text(
                    "Criar conta",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    //style: TextStyle(color: Color(0xff26a64d)),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: amc_d_3,
          )
        ],
      ),
    );
  }
}
