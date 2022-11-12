import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_top/layout/widget/new_app/cubit/cubit.dart';

class NewsLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(BuildContext context)=>NewCubit(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'News App'
          ),
        ),

      ),
    );
  }
}
