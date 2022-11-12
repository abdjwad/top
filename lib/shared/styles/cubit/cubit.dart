import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:top_top/models/home/archaved_task_screen/archivedtaskscreen.dart';
import 'package:top_top/models/home/done_task_screen/donetaskscreen.dart';
import 'package:top_top/models/home/new_task_screen/newtaskscreen.dart';
import 'package:top_top/shared/styles/cubit/states.dart';

class AppCubit extends Cubit<AppStates> {
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    NewtaskScreen(),
    DonetaskScreen(),
    ArchavedtaskScreen(),
  ];
  List<String> title = [
    'Tasks',
    'Done Task',
    'Arcive Task',
  ];



  void changeNav(int index)
  {
     currentIndex=index;
     emit(AppChangNavBarState());
  }
}
