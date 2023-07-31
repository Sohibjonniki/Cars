import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mas/viev/katta_info.dart';

import '../Cubit/users/user_state.dart';

class List1 extends StatelessWidget {
  const List1({super.key});

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
            body: Builder(
              builder: (context) {
                if (state is UserLoadingState) {
                  return Center(
                    child: CircularProgressIndicator.adaptive(),
                  );
                } else if (state is UserErrorState) {
                  return Center(
                    child: Text(state.errorMessage),
                  );
                } else if (state is UserCompleteState) {
                  return ListView.builder(
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap:() => Navigator.push(context,MaterialPageRoute(builder: (context)=>KattaInfo(info: state.users.bigCars[index],))) ,
                              child: Container(
                              
                               
                                width: 300,
                                height: 150,
                                decoration: BoxDecoration(
                                  color: Color(state.users.bigCars[index].color),
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(15),
                                    )),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 35,left: 20),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 30,bottom: 15),
                                            child: Text(state.users.bigCars[index].title,style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
                                          ),
                                          Text(state.users.bigCars[index].price,style: TextStyle(color: Colors.white,fontSize: 16),),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 20),
                                            child: Icon(Icons.star_border,color: Colors.white,),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 100,
                                      width: 150,
                                        child: Image(
                                            image: NetworkImage(state
                                                .users.bigCars[index].img)))
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    itemCount: state.users.homeImage.length,
                  );
                } else {
                  return const SizedBox.shrink();
                }
              },
            )));
  }
}
