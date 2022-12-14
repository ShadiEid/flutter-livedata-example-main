/// Generated By XFlutter Cli.
///

import 'package:flutter/material.dart';
import 'package:livedata_app/models/data_models.dart';
import 'package:livedata_app/ui/resources/dimensions/dimensions.dart';
import 'package:livedata_app/ui/screens/users/widgets/user_card.dart';
import 'package:livedata_app/ui/widgets/infinite_scroll_view/infinite_scroll_view.dart';
import "package:livedata_app/ui/widgets/instance/instance_builder.dart";
import "../viewmodels/users_viewmodel.dart";
import 'package:livedata_app/ui/core/layouts/theme_widget.dart';

class UsersMobileScreen extends StatelessWidget {
  const UsersMobileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InstanceBuilder<UsersViewModel>(
      builder: (viewModel) {
        return ThemeWidget(
          builder: (context, theme) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: unitAndHalf),
              child: InfiniteScrollView<UsersViewModel, User>(
                refreshIndicator: true,
                itemBuilder: (user) => UserCard(user: user),
              ),
            );
          },
        );
      },
    );
  }
}
