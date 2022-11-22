/// Generated By XFlutter Cli.
///

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:livedata_app/config/instance_config.dart';
import 'package:livedata_app/controllers/theme_controller.dart';
import 'package:livedata_app/events/bus_events.dart';
import 'package:livedata_app/ui/resources/dimensions/dimensions.dart';
import 'package:livedata_app/ui/resources/themes/themes_night.dart';
import 'package:livedata_app/ui/widgets/animations/animated_column.dart';
import 'package:livedata_app/ui/widgets/animations/animated_gesture.dart';
import 'package:livedata_app/ui/widgets/buttons/text_button.dart';
import 'package:livedata_app/ui/core/layouts/theme_widget.dart';

class SettingsMobileScreen extends StatelessWidget {
  const SettingsMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ThemeWidget(
      builder: (context, theme) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: twoUnits),
          child: AnimatedColumn(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("theme_mode".tr()),
                  Switch(
                    value: theme == darkTheme,
                    onChanged: (value) {
                      final mode = value ? ThemeMode.dark : ThemeMode.light;
                      findInstance<ThemeController>().changeThemeMode(mode);
                    },
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("language".tr()),
                  AnimatedGesture(
                    child: Text(context.locale.languageCode.toUpperCase()),
                    callback: () {
                      final locale = context.supportedLocales.firstWhere((element) => element.countryCode != context.locale.countryCode);
                      context.setLocale(locale);
                    },
                  ),
                ],
              ),
              const SizedBox(height: fourUnits),
              AppTextButton(
                text: "logout".tr(),
                textStyle: const TextStyle(color: Colors.red),
                callback: () => eventBus.fire(const UnauthorizedEvent()),
              ),
            ],
          ),
        );
      },
    );
  }
}
