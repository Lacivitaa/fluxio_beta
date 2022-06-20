import 'package:flutter/material.dart';
import 'package:fluxio_beta/screens/prelogin.dart';
import 'package:google_fonts/google_fonts.dart';

import '../shared/dimensions.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
            image: AssetImage('assets/background.png'),
            fit: BoxFit.cover,
          )),
          child: Padding(
            padding: EdgeInsets.only(left: getProportionateScreenWidth(100)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin:
                        EdgeInsets.only(top: getProportionateScreenWidth(1100)),
                    child: Text(
                      'Flux.io',
                      style: GoogleFonts.poppins(
                          fontSize: 35, color: const Color(0xFF2860dd)),
                    )),
                Container(
                    margin:
                        EdgeInsets.only(top: getProportionateScreenHeight(20)),
                    width: 320,
                    child: Text(
                      'Seja bem-vindo ao aplicativo que é capaz de monitorar e gerenciar seu consumo de água',
                      style: GoogleFonts.poppins(
                          fontSize: 16, color: const Color(0xFF2860dd)),
                    )),
                Container(
                    margin:
                        EdgeInsets.only(top: getProportionateScreenHeight(30)),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const PreLogin()));
                      },
                      style: ElevatedButton.styleFrom(
                          fixedSize: Size(getProportionateScreenWidth(375), getProportionateScreenHeight(100)),
                          primary: const Color(0xFF2860dd),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: Row(children: [
                        Text(
                          'Começar',
                          style: GoogleFonts.poppins(
                              fontSize: 17, color: Colors.white),
                        ),
                        Container(
                            margin: EdgeInsets.only(left: getProportionateScreenWidth(55)),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ))
                      ]),
                    ))
              ],
            ),
          )),
    );
  }
}
