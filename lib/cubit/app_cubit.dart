import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppInitial(false));


  void onHoverProject(bool hoverState,Color hoverColor){
    emit(ProjectHoverState(hoverState,hoverColor));

  }
}
