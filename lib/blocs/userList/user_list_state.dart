part of 'user_list_bloc.dart';

abstract class UserListState extends Equatable {
  const UserListState();
  
  @override
  List<Object> get props => [];
}

class UserListInitial extends UserListState {}
