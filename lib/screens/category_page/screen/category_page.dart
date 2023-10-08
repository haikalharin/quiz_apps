import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quiz_apps/screens/questioner_page/bloc/questioner_page_bloc.dart';
import 'package:quiz_apps/screens/questioner_page/bloc/questioner_page_bloc.dart';

import '../../../core/router/routes.dart';
import '../../../di.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: BlocListener<QuestionerPageBloc, QuestionerPageState>(
        listener: (context, state) {
          if (state.status.isSuccess && state.moveTo == Routes.questionerPage) {
            Navigator.of(context).pushNamed(Routes.questionerPage, arguments: {
              "questioner": state.listQuestionerModel,
            });
          }
        },
        child: Column(
          children: [
            SizedBox(height: 20),
            ContainerWithTextAndIcon(
              text: "Politics",
              icon: Icons.arrow_forward_ios,
              function: () {
                getIt<QuestionerPageBloc>().add(GetListQuestionerEvent());
              },
            ),
            SizedBox(height: 20),
            ContainerWithTextAndIcon(
              text: "Animals",
              icon: Icons.arrow_forward_ios,
              function: () {},
            ),
            SizedBox(height: 20),
            ContainerWithTextAndIcon(
              text: "GK",
              icon: Icons.arrow_forward_ios,
              function: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerWithTextAndIcon extends StatelessWidget {
  final String text;
  final IconData icon;
  final Function() function;

  ContainerWithTextAndIcon({
    required this.text,
    required this.icon,
    required this.function,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: function,
      child: Container(
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(10),
        ),
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            ),
            Icon(
              icon,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
