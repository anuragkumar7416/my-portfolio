part of 'home_cubit.dart';


abstract class HomeState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const HomeState(this.isLoading, this.errorMessage);
}

class HomeInitial extends HomeState {
  const HomeInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class HomeLoading extends HomeState {
  const HomeLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class HomeLoaded extends HomeState {
const HomeLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class HomeError extends HomeState {
const HomeError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


