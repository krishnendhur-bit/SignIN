import 'package:demologin_app/Pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newstyle extends StatefulWidget {
  const Newstyle({super.key});

  @override
  State<Newstyle> createState() => _NewstyleState();
}

class _NewstyleState extends State<Newstyle> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                // child: Text("Logo"),
                backgroundImage: NetworkImage("https://thumbs.dreamstime.com/z/vector-illustration-isolated-white-background-login-button-icon-126999949.jpg"),
                radius: 50,

              ),

              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText:  "Username",
                    prefixIcon: Icon(Icons.account_box_outlined),
                    border: OutlineInputBorder()

                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText:  "Password",
                    prefixIcon: Icon(Icons.password_outlined),
                    border: OutlineInputBorder()

                ),
              ),
              SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
