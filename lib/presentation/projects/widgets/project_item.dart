import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/cubit/app_cubit.dart';
import '../../../classes/project.dart';
import 'project_icon.dart';
import 'project_name.dart';

class ProjectItem extends StatelessWidget {
  final Project project;

  const ProjectItem({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MouseRegion(

          onEnter: (event) {

            BlocProvider.of<AppCubit>(context).onHoverProject(true,project.hoverColor);
          },
          onExit: (event) {
            BlocProvider.of<AppCubit>(context).onHoverProject(false,project.hoverColor);
          },
          child: Container(
            width: 560,
            height: 490,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                    image: AssetImage(project.backgroundImage,),
                    fit: BoxFit.fill)
            ),
            child: Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //ProjectIcon( icon: project.icon,),
                  const SizedBox(height: 20,),
                  //ProjectName(name: project.name,isDark: project.isDark,),
                  const SizedBox(height: 20,),


                ],
              ),
            ),
          ),
        );
      },
    );;
  }
}
