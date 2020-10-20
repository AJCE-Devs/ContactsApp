import 'dart:html';

import 'package:AJCE_ALumni/numeric.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String phoneNumber = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.close,
          size: 30,
          color: Colors.black,
        ),
        title: Text(
          "ContactApp",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        textTheme: Theme.of(context).textTheme,
      ),
      body: SafeArea(child:
      Column(
        children: <Widget>[
          Expanded(
              child:Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.7,0.9],
                    colors: [
                      Color(0xFFFFFFFF),
                      Color(0xFFF7F7F7),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 130,
                      child: Image.asset(
                        'assets/images/otp.png',
                      ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(vertical: 14, horizontal: 64),
                    child: Text(
                      "receive a 4 digit OTP next",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        color: Color(0xFF818181),
                      ),
                    ),
                      ),
                  ],
                ),
              ),
          ),
          Container(
            height: MediaQuery.of(context).size.height*0.13,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all( 
                Radius.circular(25),
              ),
            ),
            child: Padding(padding: EdgeInsets.all(16),
            child: Row(children: <Widget>[
              Container(
                width: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Enter Your Number",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      phoneNumber,
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xffffdc3d),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "continue",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
              ),

            ],
            ),
            ),
          ),
          Numeric(
            onNumberSelected:(value){
             setState(() {
               if(value != -1){
                 phoneNumber = phoneNumber + value.toString();
               }
               else{
                 phoneNumber = phoneNumber.substring(0,phoneNumber.length - 1);
               }
             });
            },
          ),
        ],
      ),
      ),
    );
  }
}
