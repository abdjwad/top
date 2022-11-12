import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Componants extends StatefulWidget {

  @override
  _ComponantsState createState() => _ComponantsState();
}

class _ComponantsState extends State<Componants> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}




Widget defaultFormFild(
    {
      @required TextEditingController controller,
      @required TextInputType type,
      Function onSubmit,
      Function onChange,
      bool isPassword=false,

    })=>TextFormField
  (
  controller: controller,
  keyboardType: type,
  obscureText: isPassword,
  onFieldSubmitted: onSubmit,
  onChanged: onChange,

);