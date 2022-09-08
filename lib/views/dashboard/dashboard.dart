import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/home/home.dart';
import 'package:eticket/views/search/procurar.dart';
import 'package:eticket/views/events/events.dart';
import 'package:eticket/views/user/user.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  late int i;
  final List<Widget> views = [
    Eventos(),
    Home(),
    Procurar(),
    Usuario(),
  ];

  @override
  void initState() {
    super.initState();
    i = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("e-Ticket"),
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),*/
      body: IndexedStack(
        index: i,
        children:views,
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: menuLabels,
        currentIndex: i,
        enableFeedback: false,
        showUnselectedLabels: true,
        unselectedItemColor: cor_cinza,
        selectedItemColor: cor_primaria,
        onTap: (int item){
          setState(() {
            i = item;
          });
        },
      ),
    );

  }
}
