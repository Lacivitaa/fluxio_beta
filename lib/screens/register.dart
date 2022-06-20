import 'package:flutter/material.dart';
import 'package:fluxio_beta/screens/prelogin.dart';
import 'package:fluxio_beta/shared/dimensions.dart';
import 'package:google_fonts/google_fonts.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  bool accepted = false;
  Color colorButton = Colors.grey;
  bool isEnabled = false;

  void changeCheckBox(bool? value) {
    accepted = value!;

    if (accepted) {
      colorButton = const Color(0xFF2860dd);
    } else {
      colorButton = Colors.grey;
    }
  }

  void comeback() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const PreLogin()));
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
                    margin:
                        EdgeInsets.only(top: getProportionateScreenWidth(350)),
                    child: Text(
                      'Cadastro',
                      style: GoogleFonts.poppins(
                          fontSize: 24, color: const Color(0xFF2860dd)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(150),
                        left: getProportionateScreenWidth(100),
                        right: getProportionateScreenWidth(100)),
                    child: const TextField(
                        decoration: InputDecoration(
                            labelText: "Nome",
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)))),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: getProportionateScreenHeight(100),
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
                        top: getProportionateScreenHeight(100),
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
                        left: getProportionateScreenWidth(100),
                        right: getProportionateScreenWidth(100)),
                    child: const TextField(
                        decoration: InputDecoration(
                            labelText: "Confirmar senha",
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
                          width: getProportionateScreenWidth(780),
                          child: Text(
                            'Eu li e concordo com os termos e condições de uso.',
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: Colors.grey[900]),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                          top: getProportionateScreenHeight(220)),
                      child: ElevatedButton(
                          onPressed: () {
                            isEnabled ? comeback() : null;
                          },
                          style: ElevatedButton.styleFrom(
                              elevation: 2,
                              fixedSize: Size(getProportionateScreenWidth(750),
                                  getProportionateScreenWidth(150)),
                              primary: colorButton,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(120))),
                          child: Text(
                            'Cadastrar',
                            style: GoogleFonts.poppins(
                                fontSize: 24, color: Colors.white),
                          ))),
                ])));
  }
}
