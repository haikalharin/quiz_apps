import 'package:base_mvvm/common/app_extension.dart';
import 'package:base_mvvm/core/dialog/retry_dialog.dart';
import 'package:base_mvvm/core/router/routes.dart';
import 'package:base_mvvm/core/widget/text_input.dart';
import 'package:base_mvvm/main.dart';
import 'package:base_mvvm/screens/login_page/bloc/login_page_bloc.dart';
import 'package:base_mvvm/screens/login_page/bloc/login_page_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/widget/empty_widget.dart';
import '../../../core/widget/spinkit_indicator.dart';
import '../../../di.dart';
import '../bloc/login_page_state.dart';

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

  @override
  void initState() {
    initializeValues();
    super.initState();
  }

  initializeValues() {
    getIt<LoginPageBloc>().add(LoginPageInitial());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginPageBloc>();
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: BlocListener<LoginPageBloc, LoginPageState>(
        listener: (context, state) {
          if (state.status == SubmitStatus.success.toString()) {
            Navigator.of(context).pushNamed(
              Routes.userList,
            );
          }
        },
        child: BlocBuilder<LoginPageBloc, LoginPageState>(
            builder: (BuildContext context, LoginPageState state) => state.when(
                empty: (_, __, ___, ____) =>
                    const EmptyWidget(message: "No user!"),
                loading: (_, __, ___, ____) =>
                    const SpinKitIndicator(type: SpinKitType.circle),
                loaded: (data, _, __, ___, ____) => Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Form(
                        key: formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              initialValue: postTitle,
                              hint: "Username",
                              validator: (String? value) {
                                if (value!.isNotEmpty) return null;
                                return "Username cannot be empty";
                              },
                              onChanged: (String input) {
                                context
                                    .read<LoginPageBloc>()
                                    .add(UserNameInput(input));
                              },
                            ),
                            const SizedBox(height: 15),
                            TextInput(
                              initialValue: postBody,
                              hint: "Password",
                              validator: (String? value) {
                                if (value!.isNotEmpty) return null;
                                return "Password cannot be empty";
                              },
                              onChanged: (String input) {
                                context
                                    .read<LoginPageBloc>()
                                    .add(PasswordInput(input));
                              },
                            ),
                            const SizedBox(height: 15),
                            SizedBox(
                              width: width * 0.4,
                              child: ElevatedButton(
                                onPressed: () {
                                  context
                                      .read<LoginPageBloc>()
                                      .add(LoginSubmitted());
                                },
                                child: Text("Login".toCapital),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                failure: (_, __, ___, ____, error) => RetryDialog(
                    title: error ?? '',
                    onRetryPressed: () => viewModel.add(LoginSubmitted())))),
      ),
    );
  }
}
