import 'package:eticket/utils/constants.dart';
import 'package:eticket/utils/strings.dart';
import 'package:eticket/views/payments/payments.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Ingressos extends StatefulWidget {
  int id;
  Ingressos({Key? key, required this.id}) : super(key: key);
  @override
  _IngressosState createState() => _IngressosState();
}

class _IngressosState extends State<Ingressos> {
  int value = 1;
  int qtyTickets = 124;

  late TextEditingController qty = TextEditingController();

  @override
  void initState() {
    super.initState();
    qty.text = "${value}";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: cor_primaria),
        title: const Text(
          "Comprar ingresso",
          style: TextStyle(
            color: cor_primaria,
            fontWeight: FontWeight.bold,
          ),
        ),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        padding:
            const EdgeInsets.only(top: amc_d_4, left: amc_d_2, right: amc_d_2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Titulo(texto: "Evento ${widget.id} tem $qtyTickets ingressos"),
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Pagamentos()));
                },
                child: Text("Escolher o método de pagamento")),
            Container(
              width: MediaQuery.of(context).size.width,
              padding:
                  EdgeInsets.symmetric(horizontal: amc_d_5, vertical: amc_d_3),
              child: Row(
                children: [
                  Expanded(
                      flex: 0,
                      child: Container(
                        height: 47,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              value = value + 1;
                              qty.text = "${value}";
                            });
                          },
                          child: Icon(Icons.add),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(cor_primaria),
                              elevation: MaterialStateProperty.all<double>(0.0),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(4.0)))),
                        ),
                      )),
                  SizedBox(
                    width: amc_d_3,
                  ),
                  Expanded(
                    flex: 2,
                    child: TextField(
                      controller: qty,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              vertical: amc_d_0, horizontal: amc_d_2),
                          border: OutlineInputBorder(),
                          enabled: false),
                    ),
                  ),
                  SizedBox(
                    width: amc_d_3,
                  ),
                  Expanded(
                      flex: 0,
                      child: Container(
                        height: 47,
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              if (qty.text == '0' || qty.text == '-1')
                                value = 1;
                              else
                                value = value - 1;
                              qty.text = "$value";
                            });
                          },
                          child: Icon(Icons.remove),
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(cor_primaria),
                              elevation: MaterialStateProperty.all<double>(0.0),
                              foregroundColor: MaterialStateProperty.all<Color>(
                                  Colors.white),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(4.0)))),
                        ),
                      )),
                ],
              ),
            ),
            BotaoPrincipal(
                action: () {},
                texto: "Rever pedido",
                size: MediaQuery.of(context).size.width,
                padding: amc_d_5)
          ],
        ),
      ),
    );
  }
}
