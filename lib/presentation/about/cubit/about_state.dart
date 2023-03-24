part of 'about_cubit.dart';


abstract class AboutState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const AboutState(this.isLoading, this.errorMessage);
}

class AboutInitial extends AboutState {
  const AboutInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class AboutLoading extends AboutState {
  const AboutLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class AboutLoaded extends AboutState {
const AboutLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class AboutError extends AboutState {
const AboutError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


