import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mygroceries/account/account_home.dart';
import 'package:mygroceries/favourite/favourite_home.dart';

import '../cart/cart_home.dart';
import '../explore/explore_home.dart';
import '../shop/shop_home.dart';

class BottomNavigationPage extends StatelessWidget {
  BottomNavigationPage({Key? key}) : super(key: key);
  var _selectedIndex = 0.obs;
  static List _screen = [
    ShopHome(),
    ExploreHome(),
    CartHome(),
    FavouriteHome(),
    AccountHome(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          body: _screen.elementAt(_selectedIndex.value),
          bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedIndex.value,
            unselectedItemColor: const Color(0xff181725),
            selectedItemColor: const Color(0xff53B175),
            onTap: _onItemTapped,
            showUnselectedLabels: true,
            items: [
              buildBottomNavigationBarItem(Icon(CupertinoIcons.home), "Shop"),
              buildBottomNavigationBarItem(
                  Icon(CupertinoIcons.doc_text_search), "Explore"),
              buildBottomNavigationBarItem(Icon(CupertinoIcons.cart), "Cart"),
              buildBottomNavigationBarItem(
                  const Icon(CupertinoIcons.heart), "Favourite"),
              buildBottomNavigationBarItem(
                  Icon(CupertinoIcons.person), "Account")
            ],
          ),
        ));
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(
      Icon icon, String label) {
    return BottomNavigationBarItem(
        icon: icon, label: label, backgroundColor: const Color(0xffFFFFFF));
  }

  _onItemTapped(int index) {
    _selectedIndex.value = index;
    print("index $index");
  }
}
