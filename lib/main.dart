import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:staggered_ui/provider/stagg_provider.dart';
import 'package:staggered_ui/view/homeScreen.dart';

void main()
{
  runApp(MultiProvider(
     providers: [
       ChangeNotifierProvider(create: (context) => StaggPeovider(),)
     ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context) => HomeScreen()
      },
    ),
  ));
}