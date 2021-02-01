import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/Screens/Welcome/components/background.dart';
import 'package:flutter_auth/components/rounded_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child:     Text(
                "SIMPLY \n SHOP",
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 28),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 24, right: 24, bottom: 10),
              child:     Text(
                "The simpler way to shop for your fashion style",
                style: TextStyle(fontWeight: FontWeight.normal, color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ),
            Container(

              padding: EdgeInsets.only(top: 50, left: 70, right: 70),
              child:      RoundedButton(

                text: "Getting Started",
                color: Colors.orange,

                press: () {
                },
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 100, left: 10, right: 10, bottom: 10),
              child:     Text(
                "Already have account?",
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey, fontSize: 16),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
              child:     GestureDetector(
                  child: Text("Login here", style: TextStyle(decoration: TextDecoration.underline, color: Colors.blue)),
                  onTap: () {
                    // do what you need to do when "Click here" gets clicked
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginScreen();
                        },
                      ),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
