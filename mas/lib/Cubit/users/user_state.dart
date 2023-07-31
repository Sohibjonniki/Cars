

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../model/user_model.dart';
import '../../service/UserService.dart';

part 'user_cubit.dart';


abstract class UserState extends Equatable {
  const UserState();

  @override
  List<Object?> get props => [];
}

class UserInitalState extends UserState {
  const UserInitalState();

  @override
  List<Object?> get props => [];
}

class UserLoadingState extends UserState {
  const UserLoadingState();
  @override
  List<Object?> get props => [];
}

// ignore: must_be_immutable
class UserErrorState extends UserState {
  String errorMessage;
  UserErrorState(this.errorMessage);
  @override
  List<Object?> get props => [errorMessage];
}

// ignore: must_be_immutable
class UserCompleteState extends UserState {
  UserModel users;
  UserCompleteState(this.users);
  @override
  List<Object?> get props => [users];
}
