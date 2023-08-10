import 'package:base_mvvm/data/model/user/user.dart';
import 'package:base_mvvm/screens/user/widget/create_dialog.dart';
import 'package:flutter/material.dart';

class FabUserList extends StatelessWidget {
  final Function(User user) onAddUser;
  const FabUserList({
    Key? key,
    required this.onAddUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () async {
        late User user;
        bool isCreate = await createDialog(
          context: context,
          userData: (User userValue) => user = userValue,
        );

        if (isCreate) {
          onAddUser(user);
        }
      },
      child: const Icon(Icons.add),
    );
  }
}
