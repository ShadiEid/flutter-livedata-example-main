/// Generated By XFlutter Cli.
///

import 'package:flutter/material.dart';
import 'package:livedata_app/ui/core/layouts/base_scroll_view.dart';
import 'package:livedata_app/ui/resources/dimensions/dimensions.dart';
import 'package:livedata_app/ui/screens/register/widgets/register_form.dart';
import "package:livedata_app/ui/widgets/instance/instance_builder.dart";
import "../viewmodels/register_viewmodel.dart";
import 'package:livedata_app/ui/core/layouts/theme_widget.dart';

class RegisterMobileScreen extends StatelessWidget {
  const RegisterMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<RegisterViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return const Padding(
              padding: EdgeInsets.all(twoUnits),
              child: BaseScrollView(child: RegisterForm()),
            );
          },
        );
      },
    );
  }
}
