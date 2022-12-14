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
import 'package:livedata_app/models/forms/formz_text.dart';
import 'package:livedata_app/models/forms/formz_email.dart';
import 'package:livedata_app/models/forms/formz_password.dart';
import 'package:livedata_app/models/forms/formz_confirm_password.dart';
import "package:livedata_app/ui/widgets/instance/instance_builder.dart";
import "../viewmodels/register_viewmodel.dart";
import 'package:livedata_app/ui/core/layouts/theme_widget.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<RegisterViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AnimatedColumn(
                  children: [
                    ///// Register Username /////
                    LiveDataTextField<FormzText>(
                      label: 'username'.tr(),
                      liveData: viewModel.params.username,
                      onTextChanged: viewModel.formzTextChanged,
                      textCapitalization: TextCapitalization.words,
                      errorText: () => viewModel.params.username.value.error?.message,
                    ),
                    const SizedBox(height: formSpacing),

                    ///// Register Email /////
                    LiveDataTextField<FormzEmail>(
                      label: 'email'.tr(),
                      liveData: viewModel.params.email,
                      onTextChanged: viewModel.formzEmailChanged,
                      errorText: () => viewModel.params.email.value.error?.message,
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: formSpacing),

                    ///// Register Password /////
                    LiveDataTextField<FormzPassword>(
                      label: 'password'.tr(),
                      liveData: viewModel.params.password,
                      onTextChanged: viewModel.formzPasswordChanged,
                      errorText: () => viewModel.params.password.value.error?.message,
                      obscureText: true,
                    ),
                    const SizedBox(height: formSpacing),

                    ///// Register confirmPassword /////
                    LiveDataTextField<FormzConfirmPassword>(
                      label: 'confirm_password'.tr(),
                      liveData: viewModel.params.confirmPassword,
                      onTextChanged: viewModel.formzConfirmPasswordChanged,
                      errorText: () => viewModel.params.confirmPassword.value.error?.message,
                      obscureText: true,
                    ),
                    const SizedBox(height: formSpacing),
                  ],
                ),
                AnimatedColumn(
                  children: [
                    ///// Form Submit /////
                    CombinedLiveDataBuilder.with4<FormzText, FormzEmail, FormzPassword, FormzConfirmPassword, bool>(
                      x1: viewModel.params.username,
                      x2: viewModel.params.email,
                      x3: viewModel.params.password,
                      x4: viewModel.params.confirmPassword,
                      transform: (username, email, password, confirmPassword) => username.valid && email.valid && password.valid && confirmPassword.valid,
                      builder: (context, boolean) {
                        return SizedBox(
                          width: double.infinity,
                          child: CustomizedButton(
                            enabled: boolean,
                            callback: viewModel.register,
                            child: Text("register".tr()),
                          ),
                        );
                      },
                    ),
                    const SizedBox(height: formSpacing),

                    CustomizedAnimatedWidget(
                      child: AnimatedGesture(
                        child: Text("already_have_account".tr()),
                        callback: () => appRouter.pop(),
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
