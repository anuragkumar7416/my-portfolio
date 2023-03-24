part of 'projects_cubit.dart';


abstract class ProjectsState extends Equatable{
  final bool isLoading;
  final String errorMessage;
const ProjectsState(this.isLoading, this.errorMessage);
}

class ProjectsInitial extends ProjectsState {
  const ProjectsInitial(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}


class ProjectsLoading extends ProjectsState {
  const ProjectsLoading(super.isLoading, super.errorMessage);

   @override
    List<Object?> get props => [isLoading,errorMessage];
}




class ProjectsLoaded extends ProjectsState {
const ProjectsLoaded(super.isLoading, super.errorMessage);

 @override
  List<Object?> get props => [isLoading,errorMessage];
}



class ProjectsError extends ProjectsState {
const ProjectsError(super.isLoading, super.errorMessage);

@override
List<Object?> get props => [isLoading,errorMessage];
}


