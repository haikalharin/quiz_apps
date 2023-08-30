import 'package:flutter/cupertino.dart';

import '../../../core/widget/text_input.dart';

class UserNameWidget extends StatelessWidget {
  const UserNameWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  TextInput(
      hint: "Enter Username",
      onChanged: (String value) {

      },
      validator: (String? value) {
        if (value!.isNotEmpty) return null;
        return "Username cannot be empty";
      },
    );
  }
}
