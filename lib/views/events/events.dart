import 'package:eticket/utils/constants.dart';
import 'package:eticket/views/events/add_new_event/new.dart';
import 'package:eticket/views/events/read_event/read.dart';
import 'package:eticket/views/user/settings/settings.dart';
import 'package:eticket/views/user/user.dart';
import 'package:eticket/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Eventos extends StatefulWidget {
  @override
  _EventosState createState() => _EventosState();
}

class _EventosState extends State<Eventos> {
  late TextEditingController _search;

  @override
  void initState() {
    super.initState();
    _search = TextEditingController();
  }

  bool like(id) {
    print(id);
    return true;
  }

  bool events() {
    return false;
  }

  search(String data) async {
    final response = await http.post(
        Uri.parse(
            "https://fantastico-ao.agency/api/1.0.1/eticket/promotor/search"),
        headers: <String, String>{
          'accept': "application/json",
          'Content-Type': "application/json; charset=UTF-8"
        },
        body: jsonEncode(<String, String>{"promo": data}));

    if (response.statusCode == 200) {
      print(response.body);
      var out = jsonDecode(response.body);

      return Container(
          height: 400,
          color: Colors.white,
          child: ListView.builder(
              itemCount: out.length,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemExtent: 2.0,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {},
                  leading: Icon(Icons.person),
                  trailing: const Text("response.body"),
                );
              }));
    } else {
      throw Exception("Não foi possível carregar dos dados");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Image.asset('assets/img/logo_extended.png', height: 28.0),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.all(amc_d_2),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Usuario(),
                    ));
              },
              child: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    // "http://192.168.1.131/ngongo/img/profile.png"),
                    "https://lh3.googleusercontent.com/ogw/AOh-ky3x9gYdXlBwBH4CFiFIa7YYD8KejSQoTkJMFJUajGs=s32-c-mo"),
              ),
            ),
          )
        ],
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding:
            const EdgeInsets.only(top: amc_d_4, left: amc_d_2, right: amc_d_2),
        scrollDirection: Axis.vertical,
        child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 45,
                child: TextField(
                  controller: _search,
                  cursorColor: cor_primaria,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    //focusColor: cor_primaria,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: cor_primaria)),
                    hoverColor: cor_primaria,
                    contentPadding: EdgeInsets.all(amc_d_1),
                    suffixIcon: Icon(
                      Icons.search_rounded,
                      color: cor_primaria,
                    ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: cor_primaria)),
                  ),
                  onChanged: (value) {
                    if (_search.text.length >= 3) {
                      search(value);
                    }
                  },
                ),
              ),
              Divider(),
              const Titulo(texto: "Destaques"),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 180,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LerEvento(id: 12)));
                  },
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.all(amc_d_3),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: cor_roxa,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            CardTitulo(texto: "Eventos"),
                            SizedBox(height: amc_d_1),
                            Text(
                              "25-Ago | Quinta-feira",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: amc_d_1),
                            Text(
                              "Aldair Cajicua",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal),
                            )
                          ],
                        ),
                        const SizedBox(
                          width: 140,
                        ),
                        IconButton(
                            onPressed: () {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(SnackBar(content: Text("asd")));
                            },
                            icon: const Icon(
                              Icons.favorite,
                              color: cor_rosa,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: amc_d_3),
              const Titulo(texto: "Buscar eventos por categoria"),
              const SizedBox(height: amc_d_3),
              SizedBox(
                  height: 260 / 2,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 1,
                              childAspectRatio: 1,
                              mainAxisExtent: 150.0,
                              mainAxisSpacing: amc_d_3,
                              crossAxisSpacing: 5),
                      itemCount: 6,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: 100.0,
                            alignment: Alignment.bottomCenter,
                            decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: NetworkImage(
                                  // "http://192.168.1.131/aldair/image-exemplo/abc000.jpg",
                                  "https://dummyimage.com/400x400/fd76f0/ffffff.png",
                                ),
                                // image: NetworkImage("http://10.0.2.2/aldair/image-exemplo/abc000.jpg",),
                                fit: BoxFit.fitWidth,
                              ),
                              borderRadius: BorderRadius.circular(amc_d_2),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(bottom: amc_d_1),
                              child: Text("Categoria $index"),
                            ));
                      })),
              const SizedBox(height: amc_d_3),
              Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(amc_d_1)),
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    // "http://192.168.1.131/coonet/dist/imagens/uploads/img06.png",
                    "https://ik.imgkit.net/ikmedia/Responsive_images_EMdeg0HEP.jpg",
                    fit: BoxFit.fitWidth,
                    semanticLabel: "Publicidade",
                  )
                  // child: Image.network("http://10.0.2.2/coonet/dist/imagens/uploads/img06.png", fit: BoxFit.fitWidth,semanticLabel: "Publicidade",)
                  ),
              const SizedBox(height: amc_d_1),
              const Titulo(texto: "Eventos da semana"),
              const SizedBox(height: amc_d_1),
              GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 150,
                  crossAxisCount: 2,
                ),
                shrinkWrap: true,
                itemCount: 6,
                padding: const EdgeInsets.only(top: amc_d_1),
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, i) {
                  return InkWell(
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => LerEvento(id: i))),
                    child: Card(
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Padding(
                        padding: const EdgeInsets.all(amc_d_2),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CardTitulo(texto: "Eventos $i"),
                                const SizedBox(height: 3),
                                const Text(
                                  "25.Ago | Quinta-feira",
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: cor_preto,
                                      fontWeight: FontWeight.w500),
                                ),
                                const SizedBox(height: 6),
                                const Descricao(texto: "Aldair Cajicua")
                              ],
                            ),
                            events != false
                                ? SizedBox(
                                    width: 20,
                                    height: 20,
                                    child: IconButton(
                                      onPressed: () {
                                        like(i);
                                      },
                                      icon: const Icon(
                                        Icons.favorite,
                                        color: cor_rosa,
                                        size: 18,
                                      ),
                                      splashRadius: 20,
                                      padding: const EdgeInsets.all(0),
                                      // alignment: Alignment.centerRight,
                                    ))
                                : Text("asdasd"),
                          ],
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(amc_d_2)),
                      color: cor_secundaria,
                      elevation: 0,
                    ),
                  );
                },
              ),
              const SizedBox(height: amc_d_2),
              Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(amc_d_1)),
                  width: MediaQuery.of(context).size.width,
                  child: Image.network(
                    // "http://192.168.1.131/coonet/dist/imagens/advert2.png",
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTO8Iik9iXSa4XO3JcJbzGWZiA7QSBN9x7J6w&usqp=CAU",
                    // child: Image.network("http://10.0.2.2/coonet/dist/imagens/advert2.png",
                    fit: BoxFit.fitWidth,
                  )),
              const SizedBox(height: amc_d_5),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => NovoEvento())),
        backgroundColor: cor_primaria,
        child: Icon(Icons.add),
        elevation: 2,
      ),
    );
  }
}
