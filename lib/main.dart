import 'package:flutter/material.dart';

import 'Signup.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:Scaffold(
        appBar: AppBar(
          title: Text("Login Page"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
        ),
        body:Login(),
      ),


    );
  }
}

class Login  extends StatefulWidget{
  @override
  State<Login > createState()=>_LoginState ();

}

class _LoginState extends State<Login >  {
  final formkey = GlobalKey<FormState>();
  final TextEditingController _fController = TextEditingController();
  final TextEditingController _lController = TextEditingController();
  final TextEditingController _eController = TextEditingController();
  final TextEditingController _pController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key:formkey,

      child: Padding(
        padding: EdgeInsets.all(20.0),

        child: Column(

          children: [
            TextFormField(
              validator:(value){
                if(value==null||value.isEmpty)
                {
                  return 'please enter the value';
                }
                return null;
              },
              controller: _fController,
              decoration: InputDecoration(
                labelText: 'First Name',
                border:UnderlineInputBorder(),
              ),
            ),

            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return'please enter the value';
                }
                return null;
              },
              controller: _lController,
              decoration: InputDecoration(
                labelText: 'Last Name',
                border:UnderlineInputBorder(),
              ),
            ),

            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'please enter the value';
                }
                return null;
              },
              controller: _eController,
              decoration: InputDecoration(
                labelText: 'Email ID',
                border:UnderlineInputBorder(),
              ),
            ),

            TextFormField(
              validator: (value){
                if(value==null||value.isEmpty){
                  return 'please enter the value';
                }
                return null;
              },
              controller: _pController,
              obscureText: true, // For password input
              decoration: InputDecoration(
                labelText: 'Password',
                border:UnderlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  String firstname = _fController.text;
                  String lastname = _lController.text;
                  String email = _eController.text;
                  String password = _pController.text;

                  if (firstname.isEmpty ||
                      lastname.isEmpty ||
                      email.isEmpty ||
                      password.isEmpty) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please fill in all fields")),
                    );
                  } else {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Signup(
                          firstName: firstname,
                          lastName: lastname,
                          email: email,
                          password: password,
                        ),
                      ),
                    );
                  }
                }
              },
              child: Text('Login'),
            )

          ],
        ),
      ),
    );
  }
}

