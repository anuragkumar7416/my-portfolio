part of 'dashboard_cubit.dart';


abstract class DashboardState extends Equatable{
  final bool isLoading;
  final String errorMessage;
  final int currentPageIndex;
const DashboardState(this.isLoading, this.errorMessage,this.currentPageIndex);
}

class DashboardInitial extends DashboardState {
  const DashboardInitial(super.isLoading, super.errorMessage, super.currentPageIndex);

  @override

  List<Object?> get props => [isLoading,errorMessage,currentPageIndex];
}

class DashboardPageChangeState extends DashboardState {
  const DashboardPageChangeState(super.isLoading, super.errorMessage, super.currentPageIndex);

  @override

  List<Object?> get props => [isLoading,errorMessage,currentPageIndex];
}




class DashboardError extends DashboardState {
  const DashboardError(super.isLoading, super.errorMessage, super.currentPageIndex);

  @override

  List<Object?> get props => [isLoading,errorMessage,currentPageIndex];
}
