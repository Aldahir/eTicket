import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';

class NovoEvento extends StatefulWidget {
  @override
  _NovoEventoState createState() => _NovoEventoState();
}

class _NovoEventoState extends State<NovoEvento> {
  late TextEditingController evTitulo;
  late TextEditingController evData;
  late TextEditingController evDescricao;
  late TextEditingController evLink;
  late TextEditingController evTelefone;
  late bool chkbox = false;

  @override
  void initState() {
    super.initState();
    evTitulo = TextEditingController();
    evData = TextEditingController();
    evLink = TextEditingController();
    evDescricao = TextEditingController();
    evTelefone = TextEditingController();
  }

  void _showSnackBar(context, message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cor_primaria,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Adicionar evento",
          style: TextStyle(color: Colors.white),
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
                Icons.more_horiz_rounded,
                color: Colors.white,
              ))
        ],
        backgroundColor: cor_primaria,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 35.0),
        padding: const EdgeInsets.only(top: 45.0),
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            Container(
              height: 80,
              margin: const EdgeInsets.only(
                top: 8,
              ),
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio: 1 / 1,
                    mainAxisExtent:100,
                    // mainAxisSpacing: 15,
                  ),
                  shrinkWrap: false,
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return Container(
                      alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.only(left:amc_d_3),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5.0),
                            color: cor_roxa),
                        child: InkWell(
                          onTap: ()=>Navigator.of(context).pop(),
                          child: const Padding(padding: EdgeInsets.all(8.0),child: Text("Blablabla"),
                          ),
                        ));
                  }),
            ),
            InputText(controlador: evTitulo, tipo: TextInputType.text),
            InputText(controlador: evDescricao, tipo: TextInputType.text),
            InputText(controlador: evTelefone, tipo: TextInputType.phone),
            InputText(controlador: evData, tipo: TextInputType.datetime),
            InputText(controlador: evLink, tipo: TextInputType.url),
            Row(children: [
              Checkbox(
                  checkColor: Colors.white,
                  fillColor: MaterialStateProperty.all<Color>(cor_primaria),
                  shape: CircleBorder(),
                  value: chkbox,
                  onChanged: (bool? value) {
                    setState(() {
                      chkbox = value!;
                      _showSnackBar(context, "$chkbox");
                    });
                  }),
              SizedBox(
                width: 5,
              ),
              Text("Lembrar-me 5 dias antes"),
            ]),
            SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 85.0),
              width: MediaQuery.of(context).size.width,
              height: 45.0,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(cor_primaria),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                      elevation: MaterialStateProperty.all<double>(0.0),
                      textStyle: MaterialStateProperty.all<TextStyle>(
                        const TextStyle(fontSize: 20.0, fontWeight: FontWeight.w800),
                      ),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)))),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Guardar")),
            ),
            SizedBox(height: amc_d_3,)
          ]),
        ),
      ),
    );
  }
}


