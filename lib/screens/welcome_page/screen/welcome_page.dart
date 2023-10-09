import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:random_string/random_string.dart';

import '../../../common/remote_utils.dart';
import '../../../core/router/routes.dart';
import '../../../di.dart';
import '../../questioner_page/bloc/questioner_page_bloc.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Quiz Apps"),
      ),
      body: BlocListener<QuestionerPageBloc, QuestionerPageState>(
        listener: (context, state) {
          if (state.status.isSuccess && state.moveTo == Routes.questionerPage) {
            Navigator.of(context).pushNamed(Routes.questionerPage, arguments: {
              "questioner": state.listQuestionerModel,
            });
          }
        },
  child: BlocBuilder<QuestionerPageBloc, QuestionerPageState>(
  builder: (context, state) {
    return Center(
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
                  List<String> listCategory = ['Politics','Animals','Fruits'];
                  int index = randomBetween(0, 2);
                  String category = listCategory[index];
                  getIt<QuestionerPageBloc>()
                      .add(GetListQuestionerEvent(category));

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
            SizedBox(height: 10),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      launchUrlWa("Lets Play and Learn");
                    },
                    child: Container(
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.share),
                            onPressed: () {
                              launchUrlWa("Lets Play and Learn");
                            }
                          ),
                          Text("Share")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.star),
                        onPressed: () {
                          // Add rate functionality here
                        },
                      ),
                      Text("Rate us")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
  },
),
),
    );
  }
}
