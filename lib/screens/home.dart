import 'package:flutter/material.dart';
import 'package:fluxio_beta/shared/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/background_alter.png'),
                fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
            margin: EdgeInsets.only(
                top: getProportionateScreenHeight(100),
                left: getProportionateScreenWidth(30),
                bottom: getProportionateScreenHeight(40)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Conta conectada',
                  style: GoogleFonts.poppins(fontSize: 15, color: Colors.grey),
                ),
                Text('luis@gmail.com',
                    style:
                        GoogleFonts.poppins(fontSize: 20, color: Colors.black)),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getProportionateScreenWidth(30),
                right: getProportionateScreenWidth(700)),
            child: const Divider(color: Colors.grey, height: 2),
          ),
          Container(
            child: Column(
              children: [
                Row(
                  children: [
                    getCard(
                        const Icon(
                          Icons.water,
                          color: Colors.white,
                        ),
                        'Gráfico de consumo',
                        40),
                    getCard(
                        const Icon(
                          Icons.water,
                          color: Colors.white,
                        ),
                        'Gráfico de consumo',
                        40),
                  ],
                ),
                Row(
                  children: [
                    getCard(
                        const Icon(
                          Icons.water,
                          color: Colors.white,
                        ),
                        'Gráfico de consumo',
                        40),
                    getCard(
                        const Icon(
                          Icons.water,
                          color: Colors.white,
                        ),
                        'Gráfico de consumo',
                        40),
                  ],
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }

  Padding getCard(Icon icon, String text, double topPadding) {
    return Padding(
      padding: EdgeInsets.only(
          top: getProportionateScreenHeight(topPadding),
          left: getProportionateScreenWidth(30),
          right: getProportionateScreenWidth(30),
          bottom: getProportionateScreenHeight(15)),
      child: Container(
        height: getProportionateScreenHeight(400),
        width: getProportionateScreenWidth(480),
        padding: const EdgeInsets.only(right: 50, left: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
                image: AssetImage('assets/water.png'),
                opacity: 0.2,
                fit: BoxFit.cover),
            gradient: const LinearGradient(
                colors: [Color(0xFF2860dd), Colors.blue],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
            child: icon,
          ),
          Padding(
            padding: EdgeInsets.only(top: getProportionateScreenHeight(180)),
            child: Text('Gráficos de consumo',
                style: GoogleFonts.poppins(fontSize: 20, color: Colors.white)),
          )
        ]),
      ),
    );
  }
}
