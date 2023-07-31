import 'package:flutter/material.dart';
import 'package:mas/viev/List.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double Width = MediaQuery.of(context).size.width;
    double Height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: Center(
            child: Text(
          "Beppy",
          style: TextStyle(color: Colors.black),
        )),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: Height * 0.5,
            width: Width * 1,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/82ff/d00e/d5d5a853b75f04cc913aef27a332353f?Expires=1691366400&Signature=PD2yqQsn2XrUCZvjiQWAzmuMMULs8jKGreVCbkMFe5pkApjJJSULPBzJb-xTj4rGNbdzTQI6~~E7qWUHhTdwL9ANTciaW9AZghD4z9vjDwdKtLnOtzyT1dPNEa1XojaBHh7zuUe3bBiLG2FSkIvVWkuidkCgVouMnlswM8EOp41V~9FU7qWeJoejcMk4IRyPk5B4n1bTTuWD1SmCWTsGRKTc3KZkzkeZ70JKYO4pXFHxCr0vCLIudpqEIA-W670gU1ywSfHr3-OtBa0MKOAF6ANXwXACfxO817YD1vpFDbUqRkB3OvpE0jVH3TGuejyeeTNRgTCwMiRpGbpb6JNEKw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  fit: BoxFit.fill),
            ),
          ),
          Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 35, bottom: 20),
            child: Text(
              "Find Your Vehicle",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          )),
          Center(
              child: Text(
            "Find the perfect vehicle for every",
            style: TextStyle(color: Colors.black, fontSize: 17),
          )),
          Center(
              child: Text(
            "occasion!",
            style: TextStyle(color: Colors.black, fontSize: 17),
          )),

          //eng pastagi tugma
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: InkWell(

              //bu juda kerak joyi
              onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context)=>List1())),

              //kerak joy tugadi
              child: Container(
                  height: Height * 0.07,
                  width: Height * 0.37,
                  decoration: BoxDecoration(
                      color: Color(0xffFA7F35),
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
