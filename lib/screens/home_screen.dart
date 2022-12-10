import 'package:flutter/material.dart';
import 'package:test_app/blocs/customNavigation/bottom_navigation_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/widgets/custom_btn_navigation.dart';

import 'package:test_app/views/home_view.dart';
import 'package:test_app/views/user_view.dart';
import 'package:test_app/views/settings_view.dart';

class HomeScreen extends StatelessWidget {

const HomeScreen({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
List<Widget> myList = [
  const SettingsView(),
  const HomeView(),
  const UserView(),
];
    
return BlocProvider(
  create: ( _ ) => BottomNavigationBloc(),
  child: Scaffold(
    body: Center(
      child: BlocBuilder<BottomNavigationBloc, int>(
        builder: (context, state) {
          return myList[state];
        },
      ),
    ),
    bottomNavigationBar: CustomBottomNavigatorBar(index: (state) {  }),
  ),
);

}
}
