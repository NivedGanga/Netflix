import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:netflix/core/constants.dart';

errorNotification({required String text}) {
  Fluttertoast.showToast(
    msg: text,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Color.fromARGB(121, 134, 134, 134),
    textColor: Colors.white,
    fontSize: 16.0,
    
  );
  // ScaffoldMessenger.of(scaffoldKey.currentState!.context).showSnackBar(
  //   SnackBar(
  //     content: Flexible(child: Text(text)),
  //     behavior: SnackBarBehavior.floating,
  //   ),
  // );
}
