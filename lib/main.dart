import 'package:flutter/material.dart';
import './pages/landing_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:google_sign_in/google_sign_in.dart';





void main(){
  runApp(new MaterialApp(
    title: "variable app",
    home: LandingPage(),
  ));

}

