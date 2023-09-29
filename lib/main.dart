import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  List < String> imageUrl = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
   'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
     'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
     'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',
     'https://via.placeholder.com/150',
    'https://via.placeholder.com/150',



  ];



  @override
  Widget build(BuildContext context) {
      final orientation =MediaQuery.of(context).orientation;
        final portraitOrientation = orientation==Orientation.portrait;

   return Scaffold(
    appBar: AppBar(title: const Text("News feed"),
    elevation: 2,
    ),
    body: portraitOrientation?  ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: imageUrl.length,
        itemBuilder: (context, index){
          return  Card(
            child: Image.network(imageUrl[index],
            width: 150,
            height: 150,),
          );
      }
      )
      : GridView.builder(
        itemCount: imageUrl.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2),
           itemBuilder: (context ,index){
            return Card(
              child: Image.network(imageUrl[index]),
            );
           })
     );
     
  }

  
  }

