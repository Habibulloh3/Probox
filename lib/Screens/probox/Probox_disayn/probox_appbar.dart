import 'package:flutter/material.dart';



class NavBartoo extends StatelessWidget {
 
  const NavBartoo({
    super.key,
   
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/Images/logo-01 (1).png",
            width: 178,
            height: 44,
          ),
          SizedBox(
            width: 98,
          ),
          Row(children: [
            ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Котолог", )
            ),
            SizedBox(
              width: 30,
            ),
             ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Телефоны", )
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Планшеты", )
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Ноутбуки", )
            ),
            SizedBox(
              width: 30,
            ),
           ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Умные часы", )
            ),
            SizedBox(
              width: 30,
            ),
            ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Наушники", )
            ),
            SizedBox(
              width: 30,
            ),
          ElevatedButton(
              onPressed: () {
               
              },
         child: Text( "Акксасуары", )
            ),
            SizedBox(
              width: 30,
            ),
          
          ]),Image.asset(
            "assets/Images/sticker-more-dots.png",
            width: 25,
            height: 25,
          ),
          Text("Сервисы")
        ],
      ),
    );
  }
}
