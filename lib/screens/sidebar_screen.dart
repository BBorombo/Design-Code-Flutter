import 'package:designcode/components/sidebar_row.dart';
import 'package:designcode/model/sidebar.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class SidebarScreen extends StatelessWidget {
  const SidebarScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kSidebarBackgroundColor,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(34.0),
        ),
      ),
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width * 0.8,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 35.0),
      child: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  backgroundImage: const AssetImage('assets/images/profile.jpg'),
                  radius: 21.0,
                ),
                const SizedBox(width: 15.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Sai Kambampati', style: kHeadlineLabelStyle),
                    const SizedBox(height: 4),
                    Text('License ends on 21 Jan, 2021', style: kSearchPlaceholderStyle),
                  ],
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.08),
            SidebarRow(item: sidebarItem[0]),
            const SizedBox(height: 32.0),
            SidebarRow(item: sidebarItem[1]),
            const SizedBox(height: 32.0),
            SidebarRow(item: sidebarItem[2]),
            const SizedBox(height: 32.0),
            SidebarRow(item: sidebarItem[3]),
            const SizedBox(height: 32.0),
            Spacer(),
            Row(
              children: [
                Image.asset('assets/icons/icon-logout.png', width: 17.0),
                const SizedBox(width: 12.0),
                Text('Log out', style: kSecondaryCalloutLabelStyle),
              ],
            )
          ],
        ),
      ),
    );
  }
}
