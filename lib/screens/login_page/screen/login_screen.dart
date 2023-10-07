import 'package:base_mvvm/common/app_extension.dart';
import 'package:base_mvvm/core/dialog/retry_dialog.dart';
import 'package:base_mvvm/core/router/routes.dart';
import 'package:base_mvvm/core/widget/text_input.dart';
import 'package:base_mvvm/main.dart';
import 'package:base_mvvm/screens/login_page/bloc/login_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/drop_down.dart';
import '../../../core/widget/empty_widget.dart';
import '../../../core/widget/spinkit_indicator.dart';
import '../../../di.dart';

enum PostMode { create, update }

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenScreenState();
}

class _LoginScreenScreenState extends State<LoginScreen> {
  String postTitle = "";
  String postBody = "";
  int postId = 0;
  final formKey = GlobalKey<FormState>();
  var username = TextEditingController(text: "");
  var password = TextEditingController(text: "");

  @override
  void initState() {
    // initializeValues();
    super.initState();
  }

  @override
  void dispose() {
    initializeValues();
    super.dispose();
  }

  initializeValues() {
    getIt<LoginPageBloc>().add(LoginPageInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = getIt<LoginPageBloc>();
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: BlocListener<LoginPageBloc, LoginPageState>(
        listener: (context, state) {
          if (state.status.isSuccess && state.moveTo == Routes.userList) {
            username.clear();
            password.clear();
            getIt<LoginPageBloc>().add(LoginPageInitialEvent());
            Navigator.of(context).pushNamed(
              Routes.navbarPage,
            );
          } else if (state.status == LoginPageStatus.loading) {
            const SpinKitIndicator(type: SpinKitType.circle);
          } else if (state.status == LoginPageStatus.error) {
            showDialog(
                context: context,
                builder: (BuildContext context) => RetryDialog(
                    title: 'username dan password salah',
                    onRetryPressed: () => [
                          Navigator.pop(context),
                          viewModel.add(LoginSubmittedEvent())
                        ]));
          }
        },
        child: Stack(
          children: [
            BlocBuilder<LoginPageBloc, LoginPageState>(
                builder: (context, state) {
              // if(state.status.isLoading){
              //   return const SpinKitIndicator(type: SpinKitType.circle);
              // } else if(state.status.isError){
              //   return RetryDialog(
              //       title: 'username dan password salah',
              //       onCancelPressed: () => viewModel.add(LoginPageInitialEvent()) ,
              //       onRetryPressed: () =>
              //           viewModel.add(LoginSubmittedEvent()));
              // }
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextInput(
                        controller: username,
                        // initialValue: postTitle,
                        hint: "Username",
                        validator: (String? value) {
                          if (value!.isNotEmpty || value == "") return null;
                          return "Username cannot be empty";
                        },
                        onChanged: (String input) {
                          viewModel.add(UserNameInputEvent(input));
                        },
                      ),
                      const SizedBox(height: 15),
                      TextInput(
                        controller: password,
                        // initialValue: postBody,
                        hint: "Password",
                        obscureText: true,
                        validator: (String? value) {
                          if (value!.isNotEmpty || value == "") return null;
                          return "Password cannot be empty";
                        },
                        onChanged: (String input) {
                          viewModel.add(PasswordInputEvent(input));
                        },
                      ),

                      DropDown(onChanged: (value) {

                      }, items: const ["a","b","c"],initialItem: "a",),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: width * 0.4,
                        child: ElevatedButton(
                          onPressed: () {
                            viewModel.add(LoginSubmittedEvent());
                          },
                          child: Text("Login".toCapital),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
            BlocBuilder<LoginPageBloc, LoginPageState>(
              builder: (context, state) {
                return state.status.isLoading
                    ? const SpinKitIndicator(type: SpinKitType.circle)
                    : Container();
              },
            ),
            // BlocBuilder<LoginPageBloc, LoginPageState>(
            //   builder: (context, state) {
            //     return state.status.isError
            //         ? RetryDialog(
            //             title: 'username dan password salah',
            //             onCancelPressed: () => viewModel.add(LoginPageInitialEvent()) ,
            //             onRetryPressed: () =>
            //                 viewModel.add(LoginSubmittedEvent()))
            //         : Container();
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
