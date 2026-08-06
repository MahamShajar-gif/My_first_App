import 'package:flutter/material.dart';
  void main(){
    runApp (const MyApp());
  }
   class MyApp extends StatelessWidget {
    const MyApp ({super.key});

    @override
     Widget build(BuildContext context){
       return MaterialApp(
         debugShowCheckedModeBanner: false,
         home: Scaffold(
           backgroundColor: Colors.grey.shade200 ,
            appBar: AppBar(
              backgroundColor:  Colors.pink.shade100,
               centerTitle: true,
               title:  const Text("Grid View"),
            ),
             body: GridView.count(
               crossAxisCount: 4,
               children: [
                 Container(color: Colors.red),
                 Container(color: Colors.green),
                 Container(color: Colors.blue),
                 Container(color: Colors.yellow),
               ],
             )
         )
       );

    }

   }