import 'package:flutter/material.dart';
import './ui/home.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green.shade100,
      appBar: AppBar(backgroundColor: Colors.green.shade700,title: Text('Login App',style: TextStyle(fontSize: 40.0,color: Colors.white),),),
      body: Home(),
    ),
  ));
}