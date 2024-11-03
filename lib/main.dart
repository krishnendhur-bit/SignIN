import 'package:demologin_app/Pages/Style.dart';
import 'package:demologin_app/Pages/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
 runApp(Demo());
}

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  final List screens=[
    Newstyle(),
    Signup(),
  ];
  int currentIndexValue=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

       body: screens[currentIndexValue],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndexValue,
          onTap: (index){

            setState(() {
              currentIndexValue=index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.login_rounded),
                label: "SignOut"),
             BottomNavigationBarItem(
                icon: Icon(Icons.logout_rounded),
                label: "SignUp"),



          ],
        ),
      ),
    );
  }
}

