import 'package:flutter/material.dart';
import 'package:json/src/pages/contact_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:json/src/cubit/contacts/contact_cubit.dart';
class MyApp extends StatelessWidget{
  const MyApp();
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
       create: (context) => ContactCubit()..getRecordsData(),
    child: MaterialApp(
     title: "json sample",
     theme:  ThemeData(
       primarySwatch: Colors.blue,

     ),
     home: contactPage(),
    ),
   ) ;

  }

}