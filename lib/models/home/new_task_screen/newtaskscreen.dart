import 'package:flutter/cupertino.dart';

class NewtaskScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "New Task",
            style:TextStyle(
          fontSize: 25.0,
        fontWeight: FontWeight.bold,

      ) ,
      ),
    );
  }
}
