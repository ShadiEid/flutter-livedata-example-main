/// Generated By XFlutter Cli.
///

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutterx_live_data/flutterx_live_data.dart';
import 'package:livedata_app/router/app_router.dart';
import 'package:livedata_app/ui/widgets/animations/animated_column.dart';
import 'package:livedata_app/ui/widgets/animations/animated_gesture.dart';
import 'package:livedata_app/ui/widgets/animations/customized_animated_widget.dart';
import 'package:livedata_app/ui/widgets/text_fields/livedata_text_field.dart';
import 'package:livedata_app/ui/widgets/buttons/customized_button.dart';
import 'package:livedata_app/ui/resources/dimensions/dimensions.dart';
import 'package:livedata_app/models/forms/formz_email.dart';
import 'package:livedata_app/models/forms/formz_password.dart';
import "package:livedata_app/ui/widgets/instance/instance_builder.dart";
import "../viewmodels/login_viewmodel.dart";
import 'package:livedata_app/ui/core/layouts/theme_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<LoginViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedColumn(
                  children: [
                    ///// Login Email /////
                    LiveDataTextField<FormzEmail>(
                      label: 'email'.tr(),
                      liveData: viewModel.params.email,
                      onTextChanged: viewModel.formzEmailChanged,
                      errorText: () => viewModel.params.email.value.error?.message,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: formSpacing),

                    ///// Login Password /////
                    LiveDataTextField<FormzPassword>(
                      label: 'password'.tr(),
                      liveData: viewModel.params.password,
                      onTextChanged: viewModel.formzPasswordChanged,
                      errorText: () => viewModel.params.password.value.error?.message,
                      obscureText: true,
                    ),
                    const SizedBox(height: formSpacing),
                  ],
                ),
                AnimatedColumn(
                  children: [
                    ///// Form Submit /////
                    CombinedLiveDataBuilder.with2<FormzEmail, FormzPassword, bool>(
                      x1: viewModel.params.email,
                      x2: viewModel.params.password,
                      transform: (email, password) => email.valid && password.valid,
                      builder: (context, boolean) {
                        return SizedBox(
                          width: double.infinity,
                          child: CustomizedButton(
                            enabled: boolean,
                            callback: viewModel.login,
                            child: Text("login".tr()),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: formSpacing),

                    CustomizedAnimatedWidget(
                      child: AnimatedGesture(
                        child: Text("not_have_account".tr()),
                        callback: () => appRouter.push(const Register()),
                      ),
                    ),
                    const SizedBox(height: formSpacing),
                  ],
                ),
              ],
            );
          },
        );
      },
    );
  }
}