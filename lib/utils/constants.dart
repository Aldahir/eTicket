import 'package:eticket/utils/strings.dart';
import 'package:flutter/material.dart';

const cor_green = Color(0xFF4CAF50);
const cor_primaria = Color(0xff26a64d);
const cor_green_dark = Color(0xFF1B5E20);
const cor_secundaria = Color(0xFFFFF3E0);
const cor_cinza = Colors.black12;
const cor_preto = Colors.black;
const cor_titulo = Color(0xFF00FFFF);
const cor_roxa = Colors.deepPurple;
const cor_rosa = Color(0xFFe91e63);

/// Define um distanciamento interno entre as extremidades dum widget
/// {@tools-snippet}
/// {@end-tools}
const amc_d_0 = 0.0;
const amc_d_1 = 8.0;
const amc_d_2 = 10.0;
const amc_d_3 = 16.0;
const amc_d_4 = 24.0;
const amc_d_5 = 32.0;
const amc_d_6 = 40.0;

final icones = [
  Icons.import_contacts_sharp,
  Icons.dashboard_customize,
  Icons.search_rounded,
  Icons.web,
  Icons.person
];

List<BottomNavigationBarItem> menuLabels = [
  BottomNavigationBarItem(icon: Icon(icones[3]), label: menu[2]),
  BottomNavigationBarItem(icon: Icon(icones[1]), label: menu[0]),
  BottomNavigationBarItem(icon: Icon(icones[2]), label: menu[1]),
  BottomNavigationBarItem(icon: Icon(icones[4]), label: menu[3]),
];
