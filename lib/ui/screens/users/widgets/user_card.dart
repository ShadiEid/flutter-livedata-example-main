import 'package:flutter/material.dart';
import 'package:livedata_app/models/data_models.dart';
import 'package:livedata_app/ui/core/layouts/theme_widget.dart';
import 'package:livedata_app/ui/resources/dimensions/dimensions.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';

class UserCard extends StatelessWidget {
  final User user;
  const UserCard({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeWidget(
      builder: (context, theme) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 2, vertical: halfUnit),
          padding: const EdgeInsets.all(unitAndHalf),
          decoration: BoxDecoration(
            color: theme.scaffoldBackgroundColor,
            borderRadius: BorderRadius.circular(twoUnits),
            boxShadow: const [
              BoxShadow(
                blurRadius: 3,
                color: Color.fromRGBO(0, 0, 0, 0.15),
              ),
            ],
          ),
          child: Row(
            children: [
              if (user.avatar != null)
                //// user image ////
                Padding(
                  padding: const EdgeInsetsDirectional.only(end: unitAndHalf),
                  child: Container(
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: ClipOval(
                      child: FancyShimmerImage(
                        imageUrl: user.avatar!,
                        width: 65,
                        height: 65,
                        boxFit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //// user name ////
                  Text(
                    user.username ?? "",
                    style: TextStyle(
                      fontSize: mediumText,
                      fontWeight: FontWeight.w500,
                      color: theme.primaryColor,
                    ),
                  ),

                  //// user company ////
                  Text(
                    user.company ?? "",
                    style: TextStyle(
                      fontSize: smallText,
                      color: Colors.grey.shade400,
                    ),
                  ),

                  //// user country ////
                  Text(
                    user.country ?? "",
                    style: const TextStyle(
                      fontSize: verySmallText,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
