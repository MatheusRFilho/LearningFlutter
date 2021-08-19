import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height_variable = MediaQuery.of(context).size.height;
    double width_variable = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: SizedBox(
            height: height_variable,
            child: Column(
              children: [
                Container(
                  height: height_variable / 6.5,
                  margin: EdgeInsets.only(top: height_variable / 5.5),
                  child: Image(
                    image: AssetImage('assets/images/Logo.png'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(25, height_variable / 7, 25, 0),
                  child: TextField(
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
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      hintText: 'Senha',
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF00FF5F),
                      ),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 20,
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: height_variable / 6),
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
                    onPressed: () {},
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
