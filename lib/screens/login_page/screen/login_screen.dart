import 'package:base_mvvm/common/app_extension.dart';
import 'package:base_mvvm/core/dialog/retry_dialog.dart';
import 'package:base_mvvm/core/router/routes.dart';
import 'package:base_mvvm/core/widget/text_input.dart';
import 'package:base_mvvm/main.dart';
import 'package:base_mvvm/screens/login_page/bloc/login_page_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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

  @override
  void initState() {
    // initializeValues();
    super.initState();
  }

  @override
  void dispose() {
    // initializeValues();
    super.dispose();
  }

  initializeValues() {
    getIt<LoginPageBloc>().add(LoginPageInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    final viewModel =  context
        .read<LoginPageBloc>();
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: BlocListener<LoginPageBloc, LoginPageState>(
        listener: (context, state) {
          if (state.status == LoginPageStatus.success &&
              state.moveTo == Routes.userList) {
            Navigator.of(context).pushNamed(
              Routes.userList,
            );
          }
        },
        child: BlocBuilder<LoginPageBloc, LoginPageState>(
            builder: (context, state) {
          return state.status.isInitial
              ? Padding(
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
                           getIt<LoginPageBloc>()
                                .add(UserNameInputEvent(input));
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
                                .add(PasswordInputEvent(input));
                          },
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          width: width * 0.4,
                          child: ElevatedButton(
                            onPressed: () {
                              context
                                  .read<LoginPageBloc>()
                                  .add(LoginSubmittedEvent());
                            },
                            child: Text("Login".toCapital),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              : state.status.isLoading
                  ? const SpinKitIndicator(type: SpinKitType.circle)
                  : state.status.isError
                      ? RetryDialog(
                          title: 'username dan password salah',
                          onCancelPressed: () =>
                              viewModel.add(LoginPageInitialEvent()),
                          onRetryPressed: () =>
                              viewModel.add(LoginSubmittedEvent()))
                      : const SizedBox();
        }),
      ),
    );
  }
}
