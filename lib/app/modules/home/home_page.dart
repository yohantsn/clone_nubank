import 'package:clone_nubank/app/widgets/button_outlined.dart';
import 'package:clone_nubank/app/widgets/card_button.dart';
import 'package:clone_nubank/app/widgets/design_system.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return designSystem(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.fromLTRB(20, 10, 20, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Text(
                  "Olá, Yohan",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFF9824C7),
                    shape: BoxShape.circle),
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(
                    Icons.remove_red_eye_outlined,
                    size: 27,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7)
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    color: Color(0xFF9824C7),
                    shape: BoxShape.circle),
                alignment: Alignment.center,
                child: IconButton(
                  icon: Icon(
                    Icons.settings_outlined,
                    size: 27,
                    color: Colors.white,
                  ),
                  color: Color(0xFF612F74),
                ),
              )
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.65,
            child: ListView(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 0.75,
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.fromLTRB(15, 15, 5, 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 5, 15),
                          child: Icon(
                            Icons.credit_card_outlined,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(5, 15, 5, 15),
                            child: Text(
                              "Cartão de Crédito",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ))
                      ],
                    ),
                    Padding(
                        padding:  EdgeInsets.fromLTRB(15, 15, 5, 5),
                        child: Text(
                          "Fatura Fechada",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          textAlign: TextAlign.left,
                        )),
                    Padding(
                        padding:  EdgeInsets.fromLTRB(15, 15, 5, 5),
                        child: Text(
                          "R\$ 192,70",
                          style: TextStyle(
                              color: Color(0xFFFC3B63),
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                    Padding(
                        padding:  EdgeInsets.fromLTRB(15, 5, 5, 15),
                        child: Text(
                          "Vence 14/12/2020",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                    Row(
                      children: [
                        Padding(
                          padding:  EdgeInsets.fromLTRB(15, 5, 5, 5),
                          child: buttonOut(color: Color(0xFFFC3B63), text: "Pagar Fatura", onPressed: (){})),
                        Padding(
                          padding:  EdgeInsets.fromLTRB(15, 5, 5, 5),
                          child: buttonOut(color: Colors.black, text: "Parcelar", onPressed: (){})
                        )
                      ],
                    ),
                  ],
                ),
              ),

            ),
            Container(
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 5, 15),
                          child: Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
                            child: Text(
                              "Conta",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ))
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Text(
                          "Saldo disponível",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                          textAlign: TextAlign.left,
                        )),
                    Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 10, 5),
                        child: Text(
                          "R\$ 34,70",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.left,
                        )),
                  ],
                ),
              ),
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.75,
            ),
            Container(
              child: Card(
                color: Colors.white,
                margin: EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 15, 10, 5),
                          child: Icon(
                            Icons.monetization_on_outlined,
                            color: Colors.grey,
                            size: 25,
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.fromLTRB(5, 15, 10, 5),
                            child: Text(
                              "Rewards",
                              style: TextStyle(
                                  color: Color(0xFF8A05BE), fontSize: 23),
                            )),
                      ],
                    ),
                    Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 100, 5),
                        child: Text(
                          "Pague compras com pontos que nunca expiram",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 14),
                          textAlign: TextAlign.left,
                        )),
                    Padding(
                        padding:  EdgeInsets.fromLTRB(15, 5, 5, 5),
                        child: buttonOut(color: Color(0xFF8A05BE), text: "CONHECER", onPressed: (){})
                    )
                  ],
                ),
              ),
              padding: EdgeInsets.all(10),
              height: MediaQuery.of(context).size.height * 0.25,
              width: MediaQuery.of(context).size.width * 0.75,
            ),
          ],
        )),
        Container(
          padding: EdgeInsets.only(top: 10),
          height: 130,
          alignment: Alignment.topLeft,
          child: ListView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(top: 0, bottom: 5),
            children: [
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
              CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),CardButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                  color: Color(0xFF9824C7),
                  text: "PIX"
              ),
            ],
          ),
        )
      ],
    ));
  }
}
