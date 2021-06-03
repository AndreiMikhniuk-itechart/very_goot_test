import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_cubit_state.freezed.dart';

@freezed
class HomeCubitState with _$HomeCubitState {
  factory HomeCubitState(int currentIndex) = _HomeCubitState;
}
