import 'package:flutter/material.dart';

void main(){
  runApp (const MyApp());
}
  class MyApp extends StatelessWidget {
   const MyApp ({super.key});

   @override
    Widget build(BuildContext context){

     List<String> items = [
       "Apple",
       "Banana",
       "Orange",
       "Mango",
       "Grapes",
     ];
     return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.redAccent.shade100,
            appBar: AppBar(
              backgroundColor: Colors.amber.shade100,
               title: Text("Home"),
            ),
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(items[index]),
              );
            },
          ),
        ),
      );
   }
  }
