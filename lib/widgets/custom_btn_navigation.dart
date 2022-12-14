import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/customNavigation/bottom_navigation_bloc.dart';

class CustomBottomNavigatorBar extends StatelessWidget {

const CustomBottomNavigatorBar({
  Key? key,
  required Null Function(dynamic state) index,
}) : super(key: key);

@override
Widget build(BuildContext context) {

final btnNavigationBloc = context.read<BottomNavigationBloc>();

return BlocBuilder<BottomNavigationBloc, int>(
builder: (context, state) {
  return BottomNavigationBar(
    elevation: 0,
    currentIndex: state,
    selectedItemColor: const Color.fromARGB(255, 7, 73, 255),
    type: BottomNavigationBarType.fixed,
    iconSize: 30.0,
    selectedFontSize: 16.0,
    unselectedFontSize: 14.0,
    onTap: (index) {
      btnNavigationBloc.add(TabChangeEvent(index));
    },
    items: const [
      BottomNavigationBarItem(icon: Icon(Icons.settings_applications), label: 'Settings'),
      BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      BottomNavigationBarItem(icon: Icon(Icons.android), label: 'User'),
    ],
  );
},
);

}

}


