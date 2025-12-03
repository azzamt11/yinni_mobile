import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_cubit.freezed.dart';
part 'initial_state.dart';

class InitialCubit extends Cubit<InitialState> {
  InitialCubit()
      : super(_InitialInitialState(showingBanner: false, page: 0, redirecting: false));

  static InitialCubit create(BuildContext context) =>
      InitialCubit();

  Future<void> initialize() async {
    await Future.delayed(const Duration(seconds: 2));
    final currentState = state;
    emit(currentState.copyWith(showingBanner: true));
  }
  
  Future<void> next() async {
    final currentState = state;
    if(state.page == 1) {
      emit(currentState.copyWith(redirecting: true, showingBanner: false));
    } else {
      emit(currentState.copyWith(page: 1, showingBanner: false));
    }
  }
}
