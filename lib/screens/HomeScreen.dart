import 'package:app_mobile/Utils/Colors.dart';
import 'package:app_mobile/components/RoundedButtonWidget.dart';
import 'package:app_mobile/components/productCard.dart';
import 'package:app_mobile/controllers/productController.dart';
import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';

class HomeScreen extends StatelessWidget {
  final ProductController productController = Get.put(ProductController());
  @override
  Widget build(BuildContext context) {
    double heightVariable = MediaQuery.of(context).size.height;
    double widthVariable = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            SizedBox(width: 20),
            Image(
              image: AssetImage('assets/images/Logo.png'),
              width: 150,
            ),
            SizedBox(width: 110),
            Image(
              image: AssetImage('assets/images/chat_icon.png'),
            ),
            SizedBox(width: 30),
            Image(
              image: AssetImage('assets/images/bell_icon.png'),
            ),
          ],
        ),
        backgroundColor: Color(0xFF2E3746),
      ),
      backgroundColor: ColorConstants.backgroundWhite,
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: ColorConstants.backgroundDarkGrey,
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: ColorConstants.yellow,
          unselectedItemColor: Colors.white,
          currentIndex: 0,
          onTap: (value) => {
            // Mudança de tela
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Cart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "More",
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 50, 30, 0),
        children: [
          Text(
            'Categories',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          Row(
            children: [
              RoundedButtonWidget(
                buttonIcon: 'assets/images/tshirt.png',
                width: 20,
                onpressed: () {},
                color1: ColorConstants.orangeOne,
                color2: ColorConstants.orangeTwo,
                buttonText: 'Apparel',
              ),
              RoundedButtonWidget(
                buttonIcon: 'assets/images/lipstick.png',
                width: 20,
                onpressed: () {},
                color1: ColorConstants.babyBlue1,
                color2: ColorConstants.babyBlue2,
                buttonText: 'Beauty',
              ),
              RoundedButtonWidget(
                buttonIcon: 'assets/images/shoes.png',
                width: 20,
                onpressed: () {},
                color1: ColorConstants.lightGreen1,
                color2: ColorConstants.lightGreen2,
                buttonText: 'Shoes',
              ),
              RoundedButtonWidget(
                buttonIcon: 'assets/images/yellowRigthArrow.png',
                width: 20,
                onpressed: () {
                  print('test');
                },
                color1: Colors.white,
                color2: Colors.white,
                buttonText: 'See All',
              ),
            ],
          ),
          SizedBox(height: 20),
          Text(
            'Latest',
            style: TextStyle(
              fontFamily: 'Roboto',
              fontSize: 30,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 20),
          CarouselSlider(
            options: CarouselOptions(height: 150.0),
            items: ['assets/images/banner_1.png', 'assets/images/banner_2.png']
                .map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    // decoration: BoxDecoration(color: Colors.amber),
                    child: IconButton(
                      icon: Image.asset(i),
                      iconSize: 50,
                      onPressed: () {
                        print('test');
                      },
                    ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(height: 20),
          Obx(
            () => StaggeredGridView.countBuilder(
              crossAxisCount: 3,
              itemCount: productController.productList.length,
              primary: false,
              shrinkWrap: true,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              itemBuilder: (context, index) {
                return ProductTile(productController.productList[index]);
              },
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
            ),
          ),
        ],
      ),
    );
  }
}
