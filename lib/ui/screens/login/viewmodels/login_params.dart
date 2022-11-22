/// Generated By XFlutter Cli.
///

///
/// declare and manage viewModel-liveData variables.
///
/// see: https://pub.dev/packages/flutterx_live_data
///
///

import 'package:livedata_app/models/data_models.dart';
import 'package:livedata_app/models/forms/formz_email.dart';
import 'package:livedata_app/extensions/live_data_extension.dart';
import 'package:livedata_app/models/forms/formz_password.dart';

class LoginParams {
  /// Login email
  final email = const FormzEmail.pure().liveData;

  /// Login password
  final password = const FormzPassword.pure().liveData;

  /// Login result
  final result = const User().liveData;
}
