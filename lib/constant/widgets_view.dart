import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mygroceries/constant/test_style.dart';

SingleChildScrollView buildContainer(
    String name, String quantity, int price, int length) {
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [
        Row(
          children: [
            for (int i = 0; i < length; i++) ...[
              Container(
                margin: EdgeInsets.only(left: 14, top: 7, bottom: 7),
                height: 240,
                width: 160,
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Color(0xffE2E2E2)),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Image.network(
                        "https://media.istockphoto.com/id/185262648/photo/red-apple-with-leaf-isolated-on-white-background.jpg?b=1&s=170667a&w=0&k=20&c=wbm2rjFuYpgQewyfKF2bGMrxTReYgwoKXMC7BRdXC54=",
                        height: 105,
                        width: 105,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 1),
                      child: Text(
                        name,
                        style: subheading,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 1),
                      child: Text(
                        "$quantity Price",
                        style: paragraph,
                      ),
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 9),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$ $price",
                            style: heading,
                          ),
                          Container(
                            height: 38,
                            width: 38,
                            decoration: BoxDecoration(
                                color: Color(0xff53B175),
                                borderRadius: BorderRadius.circular(15)),
                            child: Center(
                              child: Text(
                                "+",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 25),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ]
          ],
        )
      ],
    ),
  );
}
