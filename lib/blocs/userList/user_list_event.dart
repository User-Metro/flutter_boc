part of 'user_list_bloc.dart';

abstract class UserListEvent extends Equatable {
  const UserListEvent();

  @override
  List<Object> get props => [];
}

class ListChangeEvent extends UserListEvent {
  final int newIndex;
  const ListChangeEvent(this.newIndex);

  @override
  List<Object> get props => [newIndex];
}