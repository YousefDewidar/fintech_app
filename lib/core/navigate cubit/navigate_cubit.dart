import 'package:fintech_app/core/navigate%20cubit/navigate_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NavigateCubit extends Cubit<NavigateState> {
  NavigateCubit() : super(InitNavigateState());
  int curInd = 0;

  void navigateTo(int ind) {
    curInd = ind;
    emit(DoneNavigate());
  }
}
