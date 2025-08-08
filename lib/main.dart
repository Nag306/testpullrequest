
import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  await Supabase.initialize(
    anonKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InRkaGtvanF2ZG51cXNicmdzbmxiIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NDgzNDE0NzYsImV4cCI6MjA2MzkxNzQ3Nn0.bymBy_wefnqfwcDzc4IiVNkc4YRExDhNvud9TCfCPyQ",
    url: "https://tdhkojqvdnuqsbrgsnlb.supabase.co",
    );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        
     debugShowCheckedModeBanner: false,
      title: 'Hello World Demo Application',
      
      
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      
  
      home: const MyHomePage(title: 'Home page'),
    );
  }
}


class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: const Color.fromARGB(255, 164, 215, 235),
        foregroundColor: Colors.white,
      ),
      
      body: Center(
          
        child: ElevatedButton(onPressed: (){

          Navigator.push(context, MaterialPageRoute(builder:(context)=>LoginPage()));
        }, child: const Text("LOGIN")),
      
      ),
    );
  }
}

