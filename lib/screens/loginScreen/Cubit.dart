
import 'package:bloc/bloc.dart';
import 'package:engamrbakr/screens/loginScreen/States.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/cache_Helper.dart';
import '../../core/helper_methods.dart';
import '../Profile/Profile.dart';
import 'controller.dart';

class LoginController extends Cubit<LoginStates> {
  LoginController() : super(LoginInitialStates());

  static LoginController getObject(context) {
    return BlocProvider.of(context);
  }

  bool isLoding = false;
  var controller = LoginController1();


  void change()
  {

    emit(LoginLoadingStates());

  }
}
