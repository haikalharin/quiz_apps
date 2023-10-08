import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../core/router/routes.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Quiz Apps"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "Flutter Quiz Apps",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "Learn, Take Quiz, Repeat",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
              ),
            ),
            SizedBox(height: 20),
            const Text(
              "Choose an option:",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width/1.5,
              child: ElevatedButton(
                onPressed: () {
                  // Add your play button functionality here
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.blue,
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  // Text color when pressed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Border radius
                    side: BorderSide(color: Colors.blue), // Border color
                  ),
                ),
                child:  Text("Play", style: TextStyle(color: Colors.white),),
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width/1.5,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    Routes.categoriPage,
                  );
                },
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  primary: Colors.white, // Button background color
                  onPrimary: Colors.blue, // Text color when pressed
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0), // Border radius
                    side: BorderSide(color: Colors.blue), // Border color
                  ),
                ),
                child: Text("Topics"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
