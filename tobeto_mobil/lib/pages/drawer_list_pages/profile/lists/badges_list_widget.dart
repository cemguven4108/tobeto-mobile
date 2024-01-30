//rozetlerim
import 'package:flutter/material.dart';
import 'package:tobeto_mobil/models/demo_user_model.dart';
import 'package:tobeto_mobil/pages/drawer_list_pages/profile/lists/badge_widget.dart';

class BadgesListWidget extends StatelessWidget {
  const BadgesListWidget({
    super.key,
    required this.user,
  });

  final DemoUserModel user;
  
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2 / 1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: user.badges != null ? user.badges!.length : 0,
        itemBuilder: (context, index) {
          return BadgeWidget(
            badge: user.badges != null ? user.badges![index] : "",
          );
        },
      ),
    );
  }
}
