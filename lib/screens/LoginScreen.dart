import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:get/get.dart';

import '../components/GreenButton.dart';

class LoginScreen extends StatelessWidget {
  final passwordValidator = MultiValidator([
    RequiredValidator(
      errorText: 'Senha é obrigatório',
    ),
    MinLengthValidator(
      8,
      errorText: 'Senhas precisam ter 8 ou mais caracteres',
    ),
  ]);

  final emailValidator = MultiValidator([
    RequiredValidator(
      errorText: 'Email é obrigatório',
    ),
    EmailValidator(errorText: 'Email Inválido'),
  ]);

  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xFF2E3746),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SizedBox(
            height: heightVariable,
            child: Column(
              children: [
                Container(
                  height: heightVariable / 6.5,
                  margin: EdgeInsets.only(top: heightVariable / 5.5),
                  child: Image(
                    image: AssetImage('assets/images/Logo.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, heightVariable / 7, 25, 0),
                  child: TextFormField(
                    validator: emailValidator,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Email',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
                  child: TextFormField(
                    validator: passwordValidator,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Senha',
                    ),
                    obscureText: true,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: GreenButton(
                    text: 'Entrar',
                    onPress: () {
                      print('testando');
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: heightVariable / 6),
                  child: Text(
                    'Ainda não possui uma conta?',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        EdgeInsets.all(0),
                      ),
                    ),
                    onPressed: () {
                      Get.toNamed('/sign-up');
                    },
                    child: Text(
                      'Cadastre-se já',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
