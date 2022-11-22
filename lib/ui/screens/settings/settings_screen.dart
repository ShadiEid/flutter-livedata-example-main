/// Generated By XFlutter Cli.
///

import 'package:flutter/material.dart';
import 'package:livedata_app/ui/core/responsive/screen_type_layout.dart';
import 'mobile/settings_mobile_screen.dart';

import 'package:livedata_app/ui/core/layouts/base_scaffold.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      builder: (context, theme) {
        return const ScreenTypeLayout(mobile: SettingsMobileScreen());
      },
    );
  }
}