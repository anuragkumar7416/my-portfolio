part of 'app_cubit.dart';

abstract class AppState extends Equatable {
  final bool hoverState;

  const AppState(this.hoverState);
}

class AppInitial extends AppState {
  const AppInitial(super.hoverState,);

  @override
  List<Object> get props => [hoverState];
}

class ProjectHoverState extends AppState {
  final Color projectHoverColor;
  const ProjectHoverState(super.hoverState,this.projectHoverColor);

  @override
  List<Object> get props => [hoverState,projectHoverColor];
}
