import 'package:flutter/material.dart';

import 'package:flutter_application_3/Screens/probox/Probox_disayn/probox_appbar.dart';

class PhoneList extends StatefulWidget {
  const PhoneList({super.key});

  @override
  State<PhoneList> createState() => _State();
}

class _State extends State<PhoneList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: NavBartoo(),
      ),
      body: Center(
        child: Container(
          width: 1366,
          height: 616,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Color(0xfff9F9F9),
          ),
          padding: EdgeInsets.all(40),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "Probox Store. ",
                      style: TextStyle(
                        fontSize: 48,
                      ),
                    ),
                    Text(
                      "The ",
                      style: TextStyle(fontSize: 48, color: Colors.grey),
                    )
                  ]),
                  Text(
                    "best way to buy the",
                    style: TextStyle(fontSize: 48, color: Colors.grey),
                  ),
                  Text(
                    "product you love",
                    style: TextStyle(fontSize: 48, color: Colors.grey),
                  ),
                  Text(
                    "Probox Store. The best way to buy the products you ",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "love.Probox Store. The best way to buy the products you love.",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 36,
                  ),
                  Row(children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(120, 48),
                      ),
                      child: Text("Купить"),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        fixedSize: Size(196, 48),
                      ),
                      child: Text("Оставить заявку"),
                    )
                  ]),
                  SizedBox(
                    height: 73,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back_ios),
                      ),
                      IconButton(
                          onPressed: () {}, icon: Icon(Icons.arrow_forward_ios))
                    ],
                  ),
                ],
              ),
              Image.asset("assets/Images/Apple.png")
            ],
          ),
        ),
      ),
    );
  }
}
