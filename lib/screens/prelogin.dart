import 'package:flutter/material.dart';
import 'package:fluxio_beta/screens/login.dart';
import 'package:fluxio_beta/screens/register.dart';
import 'package:fluxio_beta/shared/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class PreLogin extends StatefulWidget {
  const PreLogin({Key? key}) : super(key: key);

  @override
  PreLoginState createState() => PreLoginState();
}

class PreLoginState extends State<PreLogin> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage('assets/background_alter.png'),
          fit: BoxFit.cover,
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(300)),
                child: const Image(
                  image: AssetImage('assets/fluxio_welcome.png'),
                  width: 200,
                )),
            Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(790)),
                child: Text(
                  'Você já possui conta ?',
                  style: GoogleFonts.poppins(
                      fontSize: 18, color: const Color(0xFF2860dd)),
                )),
            Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(40)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    style: ElevatedButton.styleFrom(
                        fixedSize: Size(getProportionateScreenWidth(750), getProportionateScreenHeight(120)),
                        primary: const Color(0xFF2860dd),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Text(
                      'Entrar',
                      style: GoogleFonts.poppins(
                          fontSize: 24, color: Colors.white),
                    ))),
            Container(
                margin: EdgeInsets.only(top: getProportionateScreenHeight(30)),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Register()));
                    },
                    style: ElevatedButton.styleFrom(
                        shadowColor: const Color(0xFF2860dd),
                        elevation: 2,
                        fixedSize: Size(getProportionateScreenWidth(750), getProportionateScreenHeight(120)),
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30))),
                    child: Text(
                      'Cadastrar',
                      style: GoogleFonts.poppins(
                          fontSize: 24, color: const Color(0xFF2860dd)),
                    ))),
          ],
        ),
      ),
    );
  }
}
