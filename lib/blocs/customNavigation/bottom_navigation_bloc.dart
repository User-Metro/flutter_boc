import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'bottom_navigation_event.dart';
part 'bottom_navigation_state.dart';

class BottomNavigationBloc extends Bloc<BottomNavigationEvent, int> {


  BottomNavigationBloc() : super(1) {

    on<TabChangeEvent>((event, emit) {
      emit(event.newIndex);
    });

  }

}
