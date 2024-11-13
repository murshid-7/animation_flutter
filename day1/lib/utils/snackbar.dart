import 'package:flutter/material.dart';

void showCustomSnackBar({
  required BuildContext context,
  required String message,
  Color backgroundColor = Colors.black,
  Duration duration = const Duration(seconds: 2),
}) {
  final snackBar = SnackBar(
    content: Text(
      message,
      style: const TextStyle(color: Colors.white),
    ),
    backgroundColor: backgroundColor,
    duration: duration,
    behavior: SnackBarBehavior.floating, 
    action: SnackBarAction(
      label: 'CLOSE',
      onPressed: () {
      },
      textColor: Colors.white,
    ),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

void showErrorSnackBar(BuildContext context, String message,duration) {
  showCustomSnackBar(
    context: context,
    message: message,
    backgroundColor: Colors.redAccent,
    duration: const Duration(seconds: 5),

  );
}

void showInfoSnackBar(BuildContext context, String message) {
  showCustomSnackBar(
    context: context,
    message: message,
    backgroundColor: Colors.blueAccent,
  );
}

void showSuccessSnackBar(BuildContext context, String message) {
  showCustomSnackBar(
    context: context,
    message: message,
    backgroundColor: Colors.greenAccent,
  );
}
