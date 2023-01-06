import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../constant/test_style.dart';
import 'categories_product.dart';

class ExploreHome extends StatelessWidget {
  ExploreHome({Key? key}) : super(key: key);
  List color = [
    Color(0xff53B175),
    Color(0xffF8A44C),
    Color(0xffF7A593),
    Color(0xffD3B0E0),
    Color(0xffFDE598),
    Color(0xffB7DFF5)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Find Products",
                      style: heading,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      prefixIcon: const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18.0),
                        child: Icon(CupertinoIcons.search),
                      ),
                      prefixIconConstraints:
                          const BoxConstraints(minWidth: 10, minHeight: 10),
                      hintText: '    Search Store',
                      labelStyle: subheading,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide.none),
                      fillColor: const Color(0xffF2F3F2),
                      filled: true,
                    ),
                  ),
                ),
                GridView.count(
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  childAspectRatio:
                      10 / 11.1, //MediaQuery.of(context).size.height / 750,
                  mainAxisSpacing: 5.0,
                  shrinkWrap: true,
                  children: List.generate(32, (index) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: color[index % 6]),
                            color: color[index % 6].withOpacity(0.3),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                        ),
                      ),
                      onTap: () {
                        Get.to(CategoriesProduct());
                      },
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
