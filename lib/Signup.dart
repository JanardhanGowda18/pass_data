import 'package:flutter/material.dart';

class  Signup extends StatelessWidget {
  final String firstName;
  final String lastName;
  final String email;
  final String password;

  Signup({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Details",style:TextStyle(color:Colors.blueGrey)),
        centerTitle:true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('First Name: $firstName'),
            Text('Last Name: $lastName'),
            Text('Email: $email'),
            Text('Password: $password'),


          ],
        ),
      ),
    );
  }
}