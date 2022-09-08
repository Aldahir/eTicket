import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/help/help.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Usuario extends StatefulWidget {
  @override
  _UsuarioState createState() => _UsuarioState();
}

class _UsuarioState extends State<Usuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        iconTheme: const IconThemeData(color: cor_primaria),
        title: Image.asset('assets/img/logo_extended.png', height: 28.0),
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
        padding:
            const EdgeInsets.only(top: amc_d_3, left: amc_d_2, right: amc_d_2),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(amc_d_2),
                child: Row(children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: cor_primaria,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(
                          // "http://192.168.1.131/ngongo/img/profile.png"),
                          "https://lh3.googleusercontent.com/a-/AFdZucr8UJi4LxsCrBycqZA9Kp5sSjK6-B_l92Xmy2hH-XU=s192-c-mo"),
                    ),
                  ),
                  SizedBox(
                    width: amc_d_4,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Titulo(texto: "Aldair Cajicua"),
                      Descricao(texto: "Membro desde 2022"),
                      Descricao(texto: "@acajicua")
                    ],
                  ),
                ]),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            SizedBox(
              height: amc_d_3,
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(
                    amc_d_0, amc_d_2, amc_d_0, amc_d_4),
                child: Column(
                  children: [
                    ListTile(
                      title: const Text("Alterar detalhes da conta"),
                      subtitle: const Text(
                        "Esta configuração permite alterar o dados da sua conta",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {},
                      shape: const Border(
                          //bottom: BorderSide(width: 1, color: Colors.black38, style: BorderStyle.solid)
                          ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      title: const Text("Pagamentos processadas"),
                      subtitle: const Text(
                        "Ver todos os pagamentos aprovados e processados",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {},
                      shape: const Border(
                          //bottom: BorderSide(width: 1, color: Colors.black38, style: BorderStyle.solid)
                          ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      title: const Text("Pagamentos pendentes"),
                      subtitle: const Text(
                        "Pagamentos efectuados aguardando aprovação",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {},
                      shape: const Border(
                          // bottom: BorderSide(width: 1, color: Colors.black38, style: BorderStyle.solid)
                          ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      title: const Text("Pagamentos cancelados"),
                      subtitle: const Text(
                        "Todos os pagamentos cancelados e incompletos",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {},
                      shape: const Border(
                          // bottom: BorderSide(width: 1, color: Colors.black38, style: BorderStyle.solid)
                          ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      title: const Text("Convidar amigos"),
                      subtitle: const Text(
                        "Convide seus amigos e ganhe bónus em credito",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {},
                      shape: const Border(
                          // bottom: BorderSide(width: 1, color: Colors.black38, style: BorderStyle.solid)
                          ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      title: const Text("Definições"),
                      subtitle: const Text(
                        "Altera as definiçoes de compra, produtos e serviços",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UserSettings()));
                      },
                      shape: const Border(
                          // bottom: BorderSide(width: 1, color: Colors.black38, style: BorderStyle.solid)
                          ),
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    ListTile(
                      title: const Text("Centro de ajuda"),
                      subtitle: const Text(
                        "Obtenha suporte e recursos para compras e vendas",
                        style: TextStyle(fontSize: 12, color: Colors.black38),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ajuda(),
                          ),
                        );
                      },
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        size: 15,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 4,
                            child: BotaoPrincipal(
                                texto: "Terminar sessão",
                                padding: 50.0,
                                size: MediaQuery.of(context).size.width,
                                action: () {}),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              elevation: 3,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            const SizedBox(
              height: 80,
            ),
            const Text(
              "Versão: 1.0.1",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "\u00a9 ${DateTime.now().year} Aldair Cajicua \u2022 Todos os direitos reservados",
              style: TextStyle(fontSize: 10, color: Colors.grey),
            ),
            const SizedBox(
              height: 60,
            ),
          ],
        ),
      ),
    );
  }
}
