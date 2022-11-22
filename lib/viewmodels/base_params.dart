/// Generated By XFlutter Cli.
///

import 'package:flutter/material.dart';
import 'package:livedata_app/models/ui_models/ui_message.dart';
import 'package:livedata_app/extensions/live_data_extension.dart';

class BaseParams {
  /// request in progress
  final loading = false.liveData;

  /// UI [SnackBar] message
  final uiMessage = UiMessage().liveData;
}