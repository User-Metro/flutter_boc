import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';

class UserListBloc extends Bloc<UserListEvent, int> {
  UserListBloc() : super(0) {
    on<ListChangeEvent>((event, emit) {
      emit(event.newIndex);
    });
  }
}



