import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(InitHomeState());

  final TextEditingController callID = TextEditingController();
  final TextEditingController userName = TextEditingController();

  String userID = '';

  void checkController() async {
    if (userName.text.isEmpty && callID.text.isEmpty) {
      emit(InputError(error: 'Имя и номер комнаты постые'));
    } else if (userName.text.isEmpty) {
      emit(InputError(error: 'Имя пустое'));
    } else if (callID.text.isEmpty) {
      emit(InputError(error: 'Номер комнаты пуст'));
    } else {
      userID = await createUserID();
      emit(UserID(userID: userID));
    }
  }

  Future<String> createUserID() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String? storedUserID = prefs.getString('userID');

    if (storedUserID != null) {
      return storedUserID;
    } else {
      String newUserID = Random().nextInt(9999).toString();

      await prefs.setString('userID', newUserID);
      return newUserID;
    }
  }
}
