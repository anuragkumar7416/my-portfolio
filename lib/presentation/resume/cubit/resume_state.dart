part of 'resume_cubit.dart';


abstract class ResumeState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const ResumeState(this.isLoading, this.errorMessage);
}

class ResumeInitial extends ResumeState {
  const ResumeInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class ResumeLoading extends ResumeState {
  const ResumeLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class ResumeLoaded extends ResumeState {
const ResumeLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class ResumeError extends ResumeState {
const ResumeError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


