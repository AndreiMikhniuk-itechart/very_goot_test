import 'package:bloc/bloc.dart';
import 'home_cubit_state.dart';
export 'home_cubit_state.dart';

class HomeCubitCubit extends Cubit<HomeCubitState> {
  HomeCubitCubit() : super(HomeCubitState(0));
  void goToPage(int index) => emit(state.copyWith(currentIndex: index));
}
