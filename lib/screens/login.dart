import 'package:flutter/material.dart';
import 'package:fluxio_beta/screens/home.dart';
import 'package:fluxio_beta/screens/prelogin.dart';
import 'package:fluxio_beta/shared/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  bool accepted = false;

  void changeCheckBox(bool? value) {
    accepted = value!;
  }

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
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(300)),
                      child: const Image(
                        image: AssetImage('assets/fluxio_welcome.png'),
                        width: 200,
                      )),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(220),
                        left: getProportionateScreenWidth(100),
                        right: getProportionateScreenWidth(100)),
                    child: const TextField(
                        decoration: InputDecoration(
                            labelText: "E-mail",
                            labelStyle: TextStyle(fontFamily: 'poppins'),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)))),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(150),
                        left: getProportionateScreenWidth(100),
                        right: getProportionateScreenWidth(100)),
                    child: const TextField(
                        decoration: InputDecoration(
                            labelText: "Senha",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)))),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(100),
                        left: getProportionateScreenWidth(70),
                        right: getProportionateScreenWidth(100)),
                    child: Row(
                      children: [
                        Checkbox(
                          value: accepted,
                          onChanged: (changed) => setState(() {
                            changeCheckBox(changed);
                          }),
                        ),
                        SizedBox(
                          width: getProportionateScreenWidth(400),
                          child: Text(
                            'Lembrar deste usuário.',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Colors.grey[900]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(250)),
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              fixedSize: Size(getProportionateScreenWidth(750),
                                  getProportionateScreenWidth(150)),
                              primary: const Color(0xFF2860dd),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(120))),
                          child: Text(
                            'Entrar',
                            style: GoogleFonts.poppins(
                                fontSize: 24, color: Colors.white),
                          ))),
                ])));
  }
}
