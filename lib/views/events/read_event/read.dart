import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/events/tickets/tickets.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';

class LerEvento extends StatefulWidget {
  late int id;
  LerEvento({Key? key, required this.id}) : super(key: key);

  @override
  _LerEventoState createState() => _LerEventoState();
}

class _LerEventoState extends State<LerEvento> {
  late int _id;
  final String text =
      "But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?";

  bool flag = true;

  @override
  void initState() {
    super.initState();
    _id = widget.id;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: cor_primaria),
        title: const Text(
          "Detalhes do evento",
          style: TextStyle(
            color: cor_primaria,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("Partilhar evento")),
                );
              },
              icon: const Icon(
                Icons.more_horiz_outlined,
                color: cor_primaria,
              ))
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                      alignment: Alignment.bottomLeft,
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color.fromRGBO(0, 0, 0, .1),
                              Colors.black,
                            ],
                            stops: [
                              0,
                              1.5
                            ]),
                        image: DecorationImage(
                          image: NetworkImage(
                              // "http://192.168.1.131/coonet/dist/imagens/_cover.png"),
                              "https://scontent.flad1-2.fna.fbcdn.net/v/t39.30808-6/276029948_7350437878364459_9174799108132109091_n.jpg?_nc_cat=106&ccb=1-7&_nc_sid=a26aad&_nc_eui2=AeGOzfQ-B4qNBjgAD0rGy2-RpwACpXafoUynAAKldp-hTMFplmD95AMzdnsjqBxANFcu_Ib3ZHMtDX5iaMYznk_C&_nc_ohc=pNU0dQRHgAAAX_VJwoD&_nc_ht=scontent.flad1-2.fna&oh=00_AT9YkVhuUFdmIgtf30dmyFQ5o2S5HfmkUAJrpZWLDKQOXw&oe=62FF2974"),
                          // image: NetworkImage("http://10.0.2.2/coonet/dist/imagens/_cover.png"),
                          fit: BoxFit.cover,
                          // colorFilter: ColorFilter.mode(Colors.red, BlendMode.multiply),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(amc_d_3),
                        child: Text(
                          "Evento $_id",
                          style: const TextStyle(
                              fontSize: 22.50,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(0.0, 1.0),
                                  blurRadius: 3.0,
                                  color: Color.fromARGB(255, 0, 0, 0),
                                ),
                              ],
                              color: Colors.white,
                              fontWeight: FontWeight.w900),
                        ),
                      )),
                  const SizedBox(
                    height: amc_d_3,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: amc_d_1, left: amc_d_1, right: amc_d_1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.calendar_today,
                              color: cor_primaria,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text.rich(
                                  TextSpan(
                                    text: "",
                                    children: <InlineSpan>[
                                      TextSpan(
                                          text: "Início: ",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text: "25 de agosto de 2022  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                          text: "Pelas: ",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text: "16:00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: amc_d_1,
                                ),
                                Text.rich(
                                  TextSpan(
                                    text: "",
                                    children: <InlineSpan>[
                                      TextSpan(
                                          text: "Término: ",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text: "25 de agosto de 2022  ",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                      TextSpan(
                                          text: "Pelas: ",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold)),
                                      TextSpan(
                                        text: "22:30",
                                        style: TextStyle(
                                            fontWeight: FontWeight.normal),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: amc_d_1),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              color: cor_primaria,
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 80,
                              child: const Text(
                                "Av. Fidel de Castro Ruz, "
                                "Distrito do Benfica, Rua C, "
                                "Casa 32, Salão de Festas",
                                softWrap: true,
                                style: TextStyle(height: 1.5),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: amc_d_1),
                        const Divider(),
                        const SizedBox(height: amc_d_1),
                        SizedBox(
                          height: 250,
                          child: Column(
                            children: const [],
                          ),
                        ),
                        const SizedBox(height: amc_d_3),
                      ],
                    ),
                  ),
                  // Text(flag ? ),
                  const SizedBox(height: amc_d_3),
                ]),
          ),
          Positioned(
            //top: MediaQuery.of(context).size.height-300,
            left: amc_d_1,
            right: amc_d_1,
            bottom: 20,
            child: BotaoPrincipal(
                action: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Ingressos(
                            id: _id,
                          )));
                },
                texto: "Comprar Ingressos",
                size: MediaQuery.of(context).size.width,
                padding: amc_d_3),
          ),
        ],
      ),
    );
  }
}
