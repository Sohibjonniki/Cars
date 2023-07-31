import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mas/model/user_model.dart';
import 'package:mas/viev/kichik_info.dart';

import '../Cubit/users/user_state.dart';

class KattaInfo extends StatelessWidget {
  const KattaInfo({super.key, required this.info});

  final BigCar info;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserCubit, UserState>(
        builder: (context, state) => Scaffold(
            appBar: AppBar(
              toolbarHeight: 60,
              leading: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
              ),
              elevation: 0,
              title: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 70, right: 100),
                    child: Text(
                      "Cars",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.red),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://s3-alpha-sig.figma.com/img/055b/f7ca/32ff8331f701c0f787b188418816907a?Expires=1691366400&Signature=I5DIE13XM2EPAL1O5KtU~rDdxu8TPsydmxQoaq8tMmnjiGPTXb0jiaxtt45RPtib3jFaEwqjktcVcu8bVCucDybyKgx3afUIYAOYhiB~uXf33Nb-3pYy2U22dES-v9UOssBgAMJiqzLq7KjtuD6PKS4DOfEpw2N1-MyTOnA5zLlt821b3iUQsJ36EGh1kMWz3oXn0YDEzRGbCRWc8UFkQn96zfpPuDZT34YXpw9m4DU1u-2ujpZ9LIRskJ2AtNnQK3MrZ6FZxUXGzN7JIOc3OdFz3Uklstel~aWzGcLLvRlIIYiNozHJgHeoHNjU2-uoDDMtomLAFnfCImp5emwemg__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                            fit: BoxFit.fill)),
                  )
                ],
              ),
              backgroundColor: Colors.white,
            ),
            body: Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Container(
                      height: 200,
                      width: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(info.img), fit: BoxFit.fill)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    height: 302,
                    width: 360,
                    decoration: BoxDecoration(
                        color: Color(info.color),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(children: [
                        Row(
                          children: [
                            Text(
                              info.title,
                              style:
                                  TextStyle(fontSize: 35, color: Colors.white),
                            ),
                            Icon(
                              Icons.star_border_outlined,
                              color: Colors.white,
                              size: 40,
                            )
                          ],
                        ),
                        Text(
                          info.price,
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        Text(
                          "Description",
                          style: TextStyle(fontSize: 28, color: Colors.white),
                        ),
                        Text(
                          "Wanna ride the coolest sport car in the world?",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        
                        //buyurtma qilishg tugmasi
                        Padding(
                          padding: const EdgeInsets.only(top: 35),
                          child: InkWell(
                            onTap: () => Navigator.push(context, MaterialPageRoute(builder:(context)=>KichikInfo())),
                            child: Container(
                              width: 315,
                              height: 57,
                              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.all(Radius.circular(10),),),
                              child: Center(child: Text("Book Now",style: TextStyle(fontSize: 25),)),
                            ),
                          ),
                        )
                      ]),
                    ),
                  ),
                )
              ],
            )));
  }
}
