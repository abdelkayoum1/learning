import 'package:fooditem/feature/data/model/model_course.dart';
import 'package:fooditem/feature/data/model/model_name.dart';

abstract class NameCourseState {}

class Namecourseinitial extends NameCourseState {}

class Namecourseloading extends NameCourseState {}

class Namecoursesucces extends NameCourseState {
  final List<Modelname> namecours;

  Namecoursesucces({required this.namecours});
}

class Namecoursefailure extends NameCourseState {
  final String error;
  Namecoursefailure({required this.error});
}
