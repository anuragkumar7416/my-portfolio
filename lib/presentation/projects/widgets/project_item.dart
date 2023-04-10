import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/common_functions/url_launcher.dart';
import 'package:portfolio/cubit/app_cubit.dart';
import 'package:portfolio/presentation/projects/widgets/project_desc.dart';
import '../../../classes/project.dart';
import 'project_icon.dart';
import 'project_name.dart';

class ProjectItem extends StatefulWidget {
  final Project project;

  const ProjectItem({Key? key, required this.project}) : super(key: key);

  @override
  State<ProjectItem> createState() => _ProjectItemState();
}

class _ProjectItemState extends State<ProjectItem>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..forward();

  late final Animation<double> _animation =
      CurvedAnimation(parent: _controller, curve: Curves.easeIn);

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: const Offset(0.0, 1.0),
    end: Offset.zero,
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.ease,
  ));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MouseRegion(
          onEnter: (event) {
            BlocProvider.of<AppCubit>(context)
                .onHoverProject(true, widget.project.hoverColor);
          },
          onExit: (event) {
            BlocProvider.of<AppCubit>(context)
                .onHoverProject(false, widget.project.hoverColor);
          },
          child: GestureDetector(
            onTap: () => UrlLauncher.launchWeb(widget.project.projectUrl),
            child: SlideTransition(
              position: _offsetAnimation,
              child: FadeTransition(
                opacity: _animation,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 560,
                      height: 490,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          image: DecorationImage(
                              image: AssetImage(
                                widget.project.backgroundImage,
                              ),
                              fit: BoxFit.fill)),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ProjectName(
                      name: widget.project.name,
                      isDark: true,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ProjectDesc(desc: widget.project.desc, isDark: true)
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
    ;
  }
}
