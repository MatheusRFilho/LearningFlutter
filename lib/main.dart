import 'package:app_mobile/screens/HomeScreen.dart';
import 'package:app_mobile/screens/RegisterScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:app_mobile/screens/LoginScreen.dart';

void main() => runApp(
      GetMaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        defaultTransition: Transition.native,
        locale: Locale('pt', 'BR'),
        getPages: [
          GetPage(
            name: '/',
            page: () => LoginScreen(),
          ),
          GetPage(
            name: '/sign-up',
            page: () => RegisterScreen(),
          ),
          GetPage(
            name: '/home',
            page: () => HomeScreen(),
          ),
        ],
      ),
    );
