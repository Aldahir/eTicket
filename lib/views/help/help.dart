import 'package:eticket/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'dart:io';

class Ajuda extends StatefulWidget {
  @override
  _AjudaState createState() => _AjudaState();
}

class _AjudaState extends State<Ajuda> {
  @override
  void initState() {
    super.initState();
  }

  // _launch(action) async{
  //   if(await canLaunchUrl(action)){
  //     await launchUrl(action);
  //   } else{
  //     ScaffoldMessenger.of(context).showSnackBar(
  //         const SnackBar(content: Text("Erro ao executar o comando"))
  //     );
  //   }
  // }
  //
  // _openWhatsapp(whatsapp) async {
  //   var whatsappURl_android = Uri.parse("whatsapp://send?phone="+whatsapp+"&text=hello");
  //   var whatappURL_ios =Uri.parse("https://wa.me/$whatsapp?text=${Uri.parse("hello")}");
  //   if(Platform.isIOS){
  //     // for iOS phone only
  //     if( await canLaunchUrl(whatappURL_ios)){
  //       await launchUrl(whatappURL_ios);
  //     }else{
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text("whatsapp no installed")));
  //     }
  //   }else{
  //     // android , web
  //     if( await canLaunchUrl(whatsappURl_android)){
  //       await launchUrl(whatsappURl_android);
  //     }else{
  //       ScaffoldMessenger.of(context).showSnackBar(
  //           const SnackBar(content: Text("whatsapp no installed")));
  //     }
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cor_primaria,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text("Ajuda", style: TextStyle(color: Colors.white),),
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
                color: Colors.white,
              ))
        ],
        backgroundColor: cor_primaria,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0,left: 20.0,right: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text("Escolha a forma como gostaria de nos cantactar.\n\n"
                          "Para melhor atendimento e caso não deseja esperar por favor"
                          " toque em Ligue para nós para falar com um operador",
                        textAlign: TextAlign.center,),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text("Informámos que dispomos apenas de uma linha de atendimento "
                          "e pedimos desculpas pelos longos tempos de espera que venha ocorrer.",
                        style:TextStyle(),
                        textAlign: TextAlign.center,
                      ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                      children: [
                        TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),
                            ),
                            child: Image.asset("assets/img/whatsapp.png", width: 40,)
                        ),

                        IconButton(
                          onPressed: () {},
                          icon:const Icon(Icons.phone_outlined, color: cor_primaria,
                            semanticLabel: "Ligue para nós",
                            size: 40,
                          ),
                        ),

                        IconButton(
                          onPressed: () {},
                          icon:const Icon(
                            Icons.email_outlined,
                            color: cor_primaria,
                            size: 40,
                            semanticLabel: "E-mail",
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
      ),
            ),
            const SizedBox(height: 80,),
            const Text("Versão: 1.0.1", style: TextStyle(
                fontSize: 10, color: Colors.white
            ),),
            const SizedBox(height: 10,),
            Text("\u00a9 ${DateTime.now().year} Aldair Cajicua \u2022 Todos os direitos reservados", style: TextStyle(
                fontSize: 10, color: Colors.white
            ),),
            const SizedBox(height: 60,),
          ],
        ),),
    );
  }
}
