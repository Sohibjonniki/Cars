

part of 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserInitalState()) {
    getUser();
  }

  UserService userService = UserService();

  Future<void> getUser() async {
    emit(UserLoadingState());
    dynamic response = await userService.getUsers();
    if (response is UserModel) {
      emit(UserCompleteState(response));
    } else {
      emit(UserErrorState(response));
    }
  }
}
