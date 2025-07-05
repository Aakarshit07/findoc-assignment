import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(LoginInitial()) {
    on<LoginSubmitted>((event, emit) {
      final emailValid = RegExp(
        r'^[\w-.]+@([\w-]+\.)+[\w-]{2,4}$',
      ).hasMatch(event.email);
      final passwordValid = RegExp(
        r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[!@#\$&*~]).{8,}$',
      ).hasMatch(event.password);

      if (!emailValid) {
        emit(LoginFailure('Enter a valid email.'));
        return;
      }

      if (!passwordValid) {
        emit(
          LoginFailure(
            'Password must be at least 8 chars and contain:\n• One uppercase\n• One lowercase\n• One number\n• One symbol',
          ),
        );
        return;
      }

      emit(LoginSuccess());
    });
  }
}
