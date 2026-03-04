import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooditem/core/widget/customer_text_fieled.dart';
import 'package:fooditem/feature/data/homerepo/home_repo/home_repo_iplm.dart';
import 'package:fooditem/feature/presentation/feature_home_book/cubit1.dart/name_course_cubit.dart';
import 'package:fooditem/feature/presentation/feature_home_book/cubit1.dart/name_course_state.dart';

class Featurecontainerappbar extends StatelessWidget {
  const Featurecontainerappbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = NameCourseCubit(HomeRepoIplm());
        cubit.getname();
        return cubit;
      },
      child: BlocBuilder<NameCourseCubit, NameCourseState>(
        builder: (context, state) {
          if (state is Namecoursefailure) {
            return Text(state.error);
          } else if (state is Namecoursesucces) {
            return SafeArea(
              bottom: false,

              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hi ! ${state.namecours.first.name}  '
                        '',
                      ),
                      Text('Welcome to Cs Academy'),
                      SizedBox(height: 10),
                      CustomerTextFieled(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(Icons.search),
                        title: 'What are you looking for ?',
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
