import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:top_top/componantes/componant.dart';
import 'package:top_top/shared/styles/cubit/cubit.dart';
import 'package:top_top/shared/styles/cubit/states.dart';

class Homelayout extends StatefulWidget {
  @override
  _HomelayoutState createState() => _HomelayoutState();
}

class _HomelayoutState extends State<Homelayout> {
  Database database;

  var scaffoldKey = GlobalKey<ScaffoldState>();

  var formKey = GlobalKey<FormState>();

  bool isBottomSheetShow = false;

  IconData fabIcon = Icons.edit;

  var titleController = TextEditingController();

  var timeController = TextEditingController();

  var dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => AppCubit(),
      child: BlocConsumer<AppCubit, AppStates>(
        listener: (BuildContext context, AppStates state) {},
        builder: (BuildContext context, AppStates state) {
          AppCubit cubit = AppCubit.get(context);
          return Scaffold(
            key: scaffoldKey,
            appBar: AppBar(
              title: Text(cubit.title[cubit.currentIndex]),
            ),
            body: cubit.screens[cubit.currentIndex],
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                if (isBottomSheetShow) {
                  Navigator.pop(context);
                  isBottomSheetShow = false;
                  setState(() {
                    fabIcon = Icons.edit;
                  });
                } else {
                  scaffoldKey.currentState
                      .showBottomSheet((context) =>
                      Column(
                        children:
                        [
                            defaultFormFild()
                        ],
                      ));
                  isBottomSheetShow = true;
                  setState(() {
                    fabIcon = Icons.add;

                  });
                }
              },
              child: Icon(
                fabIcon,
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: cubit.currentIndex,
              onTap: (index) {
                cubit.changeNav(index);
              },
              items: [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.menu,
                  ),
                  label: 'taske',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.check_circle,
                  ),
                  label: 'done',
                ),
                BottomNavigationBarItem(
                    icon: Icon(
                      Icons.archive,
                    ),
                    label: 'arcive '),
              ],
            ),
          );
        },
      ),
    );
  }

  void createDataBase() async {
    var database = await openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database');
        database.execute('').then((value) {
          print('table create');
        }).catchError((error) {
          print('error when tabele create ${error.toString()}');
        });
      },
      onOpen: (database) {
        print('databas open');
      },
    );
  }

  void insertDataBase() {
    database.transaction((txn) {
      txn
          .rawInsert(
              'INSERT INTO TASKS(title,date,time,stats) values("first task","333","5656","new")')
          .then((value) {
        print('$value inserting successfully');
      }).catchError((error) {
        print('error when tabele create ${error.toString()}');
      });
      return null;
    });
  }




}
