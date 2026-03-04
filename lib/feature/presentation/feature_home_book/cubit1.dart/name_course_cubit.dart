import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fooditem/feature/data/homerepo/home_repo/home_repo.dart';
import 'package:fooditem/feature/data/model/model_course.dart';
import 'package:fooditem/feature/presentation/feature_home_book/cubit/course_state.dart';
import 'package:fooditem/feature/presentation/feature_home_book/cubit1.dart/name_course_state.dart';

class NameCourseCubit extends Cubit<NameCourseState> {
  final HomeRepo homerepo;
  NameCourseCubit(this.homerepo) : super(Namecourseinitial());

  Future<void> getname() async {
    try {
      emit(Namecourseloading());
      var res = await homerepo.getname();
      // print(res);
      res.fold(
        (failure) {
          emit(Namecoursefailure(error: failure.error.toString()));
        },
        (namecourse) {
          print('succes');
          // print(namecourse);
          // print(namecourse.first);
          emit(Namecoursesucces(namecours: namecourse));
        },
      );
    } catch (e) {
      emit(Namecoursefailure(error: e.toString()));
    }
  }
}
