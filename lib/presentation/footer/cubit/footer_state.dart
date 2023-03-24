part of 'footer_cubit.dart';


abstract class FooterState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const FooterState(this.isLoading, this.errorMessage);
}

class FooterInitial extends FooterState {
  const FooterInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class FooterLoading extends FooterState {
  const FooterLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class FooterLoaded extends FooterState {
const FooterLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class FooterError extends FooterState {
const FooterError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


