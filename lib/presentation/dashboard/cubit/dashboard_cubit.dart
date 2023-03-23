import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'dashboard_state.dart';

class DashboardCubit extends Cubit<DashboardState> {
  DashboardCubit() : super(DashboardInitial(false,'',0));

  void onDrawerItemSelected(int pageIndex){
    emit(DashboardPageChangeState(state.isLoading, state.errorMessage, pageIndex));

  }
}
