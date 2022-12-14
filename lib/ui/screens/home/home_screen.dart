/// Generated By XFlutter Cli.
///
import 'package:flutter/material.dart';
import 'package:livedata_app/ui/core/responsive/screen_type_layout.dart';
import 'mobile/home_mobile_screen.dart';
import 'package:livedata_app/ui/core/layouts/base_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      builder: (context, theme) {
        return const SafeArea(
          child: ScreenTypeLayout(mobile: HomeMobileScreen()),
        );
      },
    );
  }
}
