// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login_page/components/my_button.dart';
import 'package:login_page/components/my_textfield.dart';
import 'package:login_page/components/square_tile.dart';



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  
  //text editing controllers
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  // login method
  void login() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      child: Container(
      decoration: BoxDecoration(
      image: DecorationImage(
      image: AssetImage('lib/image/bulb.png'),
      fit: BoxFit.fill,
       ),
      ),
      
        
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 2),

            //logo
              const Icon(
                Icons.account_circle,
                color: Color.fromRGBO(85, 27, 233, 1),
                size: 100,
                ),

              

              const SizedBox(height: 30),

              Text(
                'Login',
                style: TextStyle(
                  color: Color.fromARGB(255, 85, 27, 233),
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  
                ),
              ),

              const SizedBox(height: 30),
      
            //username textfield
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(height: 20),
      
            //password textfield
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),
      
              const SizedBox(height: 20),
            //sing in button
              MyButton(
                onTap: login,
              ),

              const SizedBox(height: 30),
            //icon
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Row(
                children: [
                  Expanded(
                    child: Divider(color: Colors.grey[400],thickness: 0.5,),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'Sign in with social account',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(child: Divider(color: Colors.grey[400],thickness: 0.5,))
                ],
              ), 
            ),

            //account icon
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                SquareTile(imagepath: 'lib/image/google.png'),
                SizedBox(width: 35),
                SquareTile(imagepath: 'lib/image/twitter.png'),
                SizedBox(width: 35),
                SquareTile(imagepath: 'lib/image/facebook.png')
              ],
            ),

            const SizedBox(height: 30),
            //dont remember password
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text('Don\'t Remember Password?',style: TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontWeight: FontWeight.bold),)
              ]),
            ),
          ],),
        ),
      ),
    ),
    );
  }
}