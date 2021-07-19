import 'package:flutter/material.dart';
import 'package:flutter_tutorial/BgImg.dart';
import 'package:flutter_tutorial/pages/home_page.dart';
import 'package:flutter_tutorial/utils/Constants.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userConroller = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login Page'),),
      body: Stack(
        fit: StackFit.expand,
        children: [
          BgImg(),
          Center(
            child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
            child: Card(
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Enter UserName',
                              labelText: 'Username',
                            ), 
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter Password',
                              labelText: 'Password',
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),

                           RaisedButton(onPressed: (){

                             Constants.prefs.setBool("logged In",true);
                              Navigator.pushReplacementNamed(context, 
                              '/home');
                            },
                            child: Text('Sing In'),
                            color: Colors.orange,
                            textColor: Colors.white,

                            ),
                        ],
                      ),
                    ))
                ],
              ),
            ),
        ),
      ),
          ),
        ],
      )
    );
  }
}