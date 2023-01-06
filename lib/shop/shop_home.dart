import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constant/test_style.dart';
import '../constant/widgets_view.dart';

class ShopHome extends StatelessWidget {
  const ShopHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ht = MediaQuery.of(context).size.height;
    double wd = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset("assets/images/Vector.png"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(CupertinoIcons.location_solid),
                  Text(
                    'Dhaka, Banassre',
                    style: subheading,
                  )
                ],
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
              Container(
                margin: EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                height: ht * 0.15,
                width: wd,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(12)),
              ),

              ///************************* Exclusive offers **************************************///
              SizedBox(
                height: 16,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exclusive Offer",
                      style: majorheading,
                    ),
                    Text(
                      "See All",
                      style: linktext,
                    ),
                  ],
                ),
              ),
              buildContainer("Red Apple", "1Kg", 10, 6),

              ///************************ Best Selling ***************************************///
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Selling",
                      style: majorheading,
                    ),
                    Text(
                      "See All",
                      style: linktext,
                    ),
                  ],
                ),
              ),
              buildContainer("Red Apple", "1Kg", 10, 6),

              ///************************ pulses ***************************************///
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Groceries",
                      style: majorheading,
                    ),
                    Text(
                      "See All",
                      style: linktext,
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Row(
                      children: [
                        for (int i = 0; i <= 10; i++) ...[
                          Container(
                            margin:
                                EdgeInsets.only(left: 14, top: 7, bottom: 7),
                            height: ht * 0.12,
                            width: wd * 0.6,
                            decoration: BoxDecoration(
                              color: Color(0xffF8A44C).withOpacity(0.15),
                              // border: Border.all(
                              //     width: 1, color: Color(0xffE2E2E2)),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "Pulses",
                                  style: subheading,
                                )
                              ],
                            ),
                          ),
                        ]
                      ],
                    )
                  ],
                ),
              ),

              ///************************ Best Selling ***************************************///
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Non-Veg",
                      style: majorheading,
                    ),
                    Text(
                      "See All",
                      style: linktext,
                    ),
                  ],
                ),
              ),
              buildContainer("Red Apple", "1Kg", 10, 6),
            ],
          ),
        ),
      ),
    );
  }
}
