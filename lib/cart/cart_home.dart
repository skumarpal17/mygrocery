import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import '../constant/test_style.dart';

class CartHome extends StatelessWidget {
  const CartHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "My Cart",
                    style: heading,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (context, inedx) {
                    return ListTile(
                      leading: Image.network(
                        "https://encrypted-tbn2.gstatic.com/shopping?q=tbn:ANd9GcQ-qXYSOv4JDh8hpEYYWXOkLn2bMnKRuimchL5FYNeM0AymiqyOu-A23kMGm5lPQcKkSVixgK1qGmcnz9UOaTnJFq4hgkSxGIeSBbu8ZA31YGSxAEQsxwk1",
                        height: 80,
                        width: 80,
                      ),
                      title: Text(
                        "Bell paper red",
                        style: subheading,
                      ),
                      subtitle: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "1kg price",
                            style: paragraph,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Color(0xff53B175),
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              ),
                              Text("1"),
                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    color: Color(0xff53B175),
                                    borderRadius: BorderRadius.circular(15)),
                                child: const Center(
                                  child: Text(
                                    "+",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 25),
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
