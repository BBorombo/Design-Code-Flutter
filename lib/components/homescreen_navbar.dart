import 'package:designcode/components/searchfield_widget.dart';
import 'package:designcode/components/sidebar_button.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreenNavBar extends StatelessWidget {
  const HomeScreenNavBar({Key key, @required this.triggerAnimation})
      : super(key: key);

  final Function triggerAnimation;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SidebarButton(triggerAnimation: triggerAnimation),
          SearchFieldWidget(),
          Icon(
            Icons.notifications,
            color: kPrimaryLabelColor,
          ),
          const SizedBox(width: 16.0),
          CircleAvatar(
            radius: 18.0,
            backgroundImage: AssetImage('assets/images/profile.jpg'),
          ),
        ],
      ),
    );
  }
}
