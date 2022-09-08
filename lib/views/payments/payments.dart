import 'package:eticket/utils/constants.dart';
import 'package:eticket/utils/strings.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Pagamentos extends StatefulWidget {
  const Pagamentos({Key? key}) : super(key: key);

  @override
  State<Pagamentos> createState() => _PagamentosState();
}

class _PagamentosState extends State<Pagamentos> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: cor_primaria),
        title: const Text(
          "Método de pagamento",
          style: TextStyle(
            color: cor_primaria,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        // actions: [
        //   IconButton(
        //       onPressed: () {
        //         Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //               builder: (context) => UserSettings(),
        //             ));
        //       },
        //       icon: const Icon(
        //         Icons.settings_outlined,
        //         color: cor_primaria,
        //       ))
        // ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: amc_d_3, vertical: amc_d_5),
          child: Text(
            "Escolha o método de pagamento que pretende para finalizar a compra do seu lote de ingressos",
            style: TextStyle(fontSize: 17),
          ),
        ),
        Expanded(
          flex: 2,
          child: ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Radio(
                    activeColor: cor_primaria,
                    onChanged: (v) => setState(() => value = v as int),
                    value: index,
                    groupValue: value,
                  ),
                  title: Text(payment[index]),
                  subtitle: Text("Subtitle here like lorem ipsum"),
                  trailing: Icon(Icons.chevron_right),
                  onTap: () {
                    setState(() {
                      value = index;
                    });
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider();
              }),
        ),
        BotaoPrincipal(
            action: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Guardar preferencia de pagamento $value")));
            },
            texto: "Guardar",
            size: MediaQuery.of(context).size.width,
            padding: amc_d_5),
        SizedBox(
          height: amc_d_6,
        )
      ]),
    );
  }
}
