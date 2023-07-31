import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mas/viev/homepage.dart';

import 'Cubit/users/user_state.dart';

void main() {
  runApp(MultiBlocProvider(
      providers: [BlocProvider(create: (context) => UserCubit())],
      child: MyApp()));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePage(),
    );
  }
}
