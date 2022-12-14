import 'package:flutter/material.dart';
import 'package:test_app/blocs/userList/user_list_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:test_app/views/user1.dart';
import 'package:test_app/views/user2.dart';

class UserScreen extends StatelessWidget {

const UserScreen({Key? key,}) : super(key: key);

@override
Widget build(BuildContext context) {

List<Widget> lsUsers = [
  const User1(),
  const User2(),
];

return BlocProvider(
create: (_) => UserListBloc(),
child: Scaffold(

body: BlocBuilder<UserListBloc, int>(
  builder: (context, state) {
    return ListView.separated(
      physics: AlwaysScrollableScrollPhysics(),
      itemBuilder: (context, state) {
        return ListTile(
          onTap: () {
            //BlocProvider.of<UserListBloc>(context).add(ListChangeEvent(state));

             Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => lsUsers[state]
             ));

          },
          title: Text('name'),
          subtitle: Text('Description...'),
        );
      },
      separatorBuilder: (context, state) => Divider(),
      itemCount: lsUsers.length,
    );
  },
),

),
);
}

}
