import 'package:app_mobile/Utils/Colors.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../components/GreenButton.dart';

class RegisterScreen extends StatelessWidget {
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
      appBar: AppBar(
        title: Image(
          image: AssetImage('assets/images/Logo.png'),
          width: 150,
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF2E3746),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.white,
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SizedBox(
          height: heightVariable,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 20, 8, 0),
                child: Container(
                  child: Text(
                    'Crie sua conta de acesso usando o seu e-mail como usuário.',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: ColorConstants.ligthGrey,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 50, 25, 0),
                decoration: BoxDecoration(
                  color: ColorConstants.ice,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),
                    hintText: 'Nome',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
                decoration: BoxDecoration(
                  color: ColorConstants.ice,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  validator: emailValidator,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),
                    hintText: 'Email',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(25, 20, 25, 0),
                decoration: BoxDecoration(
                  color: ColorConstants.ice,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextFormField(
                  validator: passwordValidator,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Roboto',
                    ),
                    hintText: 'Senha',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                child: GreenButton(
                  text: 'Cadastrar',
                  onPress: () {
                    print('testando');
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
