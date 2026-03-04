import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooditem/feature/data/homerepo/home_repo/home_repo_iplm.dart';
import 'package:fooditem/feature/data/model/model_course.dart';
import 'package:fooditem/feature/presentation/feature_home_book/cubit/course_cubit.dart';
import 'package:fooditem/feature/presentation/feature_home_book/cubit/course_state.dart';

class FeatureDetail extends StatelessWidget {
  final ModelCourse course;
  const FeatureDetail({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final cubit = CourseCubit(HomeRepoIplm());
        cubit.getcourse();
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Feature detail'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
          child: BlocBuilder<CourseCubit, CourseState>(
            builder: (context, state) {
              if (state is Coursestatefailure) {
                return Text(state.error);
              } else if (state is Coursestatesucces) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Image.asset('assets/Image+Background.png'),
                    Container(
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(color: Colors.red),
                      child: CachedNetworkImage(
                        width: 50,
                        height: 100,
                        fit: BoxFit.fill,
                        errorWidget: (context, url, error) => Icon(Icons.error),
                        imageUrl: course.image.toString(),
                      ),
                    ),
                    SizedBox(height: 30),
                    Text(
                      course.title.toString(),
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff1E293B),
                      ),
                    ),

                    Text(
                      '${course.price} Dz',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff22C55E),
                      ),
                    ),

                    Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff0F172A),
                      ),
                    ),

                    Text(
                      course.desc.toString(),
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff475569),
                      ),
                    ),
                  ],
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}
