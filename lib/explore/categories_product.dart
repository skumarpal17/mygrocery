import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:mygroceries/constant/test_style.dart';

class CategoriesProduct extends StatelessWidget {
  CategoriesProduct({Key? key}) : super(key: key);

  final List<String> _listOfExpertise = [
    "Flutter",
    "Kotlin",
    "React Native",
    "Android",
    "Python"
  ];
  var _isChecked = [].obs;

  @override
  initState() {
    // super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _isChecked.value = List<bool>.filled(_listOfExpertise.length, false);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const Icon(CupertinoIcons.back)),
                  Text(
                    "Categories Text",
                    style: heading,
                  ),
                  IconButton(
                      onPressed: () {
                        _settingModalBottomSheet(context);
                      },
                      icon: Icon(CupertinoIcons.sort_down))
                ],
              ),
              SizedBox(
                height: Get.height * 0.88,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GridView.count(
                        physics: const NeverScrollableScrollPhysics(),
                        crossAxisCount: 2,
                        childAspectRatio: 10 / 16.3,
                        shrinkWrap: true,
                        mainAxisSpacing: 5,
                        crossAxisSpacing: 5,
                        children: [
                          for (int i = 0; i < 10; i++) ...[
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 14, top: 7, bottom: 7),
                              // height: 240,
                              width: 160,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: Color(0xffE2E2E2)),
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
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 1),
                                    child: Text(
                                      "name",
                                      style: subheading,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0, vertical: 1),
                                    child: Text(
                                      "20 Price",
                                      style: paragraph,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 18,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 9),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "\$ 47",
                                          style: heading,
                                        ),
                                        Container(
                                          height: 38,
                                          width: 38,
                                          decoration: BoxDecoration(
                                              color: Color(0xff53B175),
                                              borderRadius:
                                                  BorderRadius.circular(15)),
                                          child: const Center(
                                            child: Text(
                                              "+",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 25),
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
                ),
              ),
            ],
          ),
        ),
      ),
      // bottomSheet: showBottomSheet(context)
    );
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
        ),
        context: context,
        builder: (BuildContext context) {
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ///*********************///
                Container(
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
                  child: Text(
                    "Categories",
                    style: majorheading,
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _listOfExpertise.length,
                  itemBuilder: (_, i) {
                    return Obx(() => ListTile(
                          dense: true,
                          leading: Checkbox(
                              value: _isChecked[i],
                              onChanged: (val) => _isChecked[i] = val!),
                          title: Text(_listOfExpertise[i]),
                        ));
                  },
                ),

                ///*********************///
              ],
            ),
          );
        });
  }
}
