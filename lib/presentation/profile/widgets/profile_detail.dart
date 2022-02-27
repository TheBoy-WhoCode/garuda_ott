import 'package:flutter/material.dart';
import 'package:garuda_ott/utils/utils.dart';

class ProfileDetail extends StatelessWidget {
  const ProfileDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    return Container(
      padding: const EdgeInsets.all(10),
      child: Card(
        elevation: 10,
        color: MyColors.cardColor,
        semanticContainer: true,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            ListTile(
              leading: const Icon(
                Icons.account_circle_outlined,
                size: 30,
              ),
              title: Text(
                "My Account",
                style: themeData.textTheme.headline3,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 30,
              ),
              title: Text(
                "Settings",
                style: themeData.textTheme.headline3,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.privacy_tip,
                size: 30,
              ),
              title: Text(
                "Privacy Policy",
                style: themeData.textTheme.headline3,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.support_agent_rounded,
                size: 30,
              ),
              title: Text(
                "Support",
                style: themeData.textTheme.headline3,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(
                Icons.logout,
                size: 30,
              ),
              title: Text(
                "Log Out",
                style: themeData.textTheme.headline3,
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios_rounded,
                size: 20,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
