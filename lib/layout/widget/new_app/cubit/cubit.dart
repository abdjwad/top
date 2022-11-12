import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:top_top/layout/widget/new_app/cubit/stats.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewCubit extends Cubit<NewStats>
{
  NewCubit() : super(NewInitialStats());

  static NewCubit get(context) => BlocProvider.of(context);
  int currentIndex=0;
  List<BottomNavigationBarItem>bottomItem =[
    BottomNavigationBarItem(
      icon: Icon (
      Icons.business,

    ),
      label: 'Business'

    ),
    BottomNavigationBarItem(
      icon: Icon (
      Icons.sports,

    ),
      label: 'Sports'

    ),
    BottomNavigationBarItem(
      icon: Icon (
      Icons.science,

    ),
      label: 'Science'

    ),

  ];
  
}
