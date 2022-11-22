/// Generated By XFlutter Cli.
///

import 'package:flutter/material.dart';

void showSnackBar({required BuildContext context, required String message, Function()? callback, TextStyle? textStyle}) {
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(
      SnackBar(
        content: Text(message, style: textStyle),
        backgroundColor: Theme.of(context).colorScheme.onSurface,
        action: SnackBarAction(
          label: "Ok",
          onPressed: () => callback?.call(),
        ),
      ),
    );
}
