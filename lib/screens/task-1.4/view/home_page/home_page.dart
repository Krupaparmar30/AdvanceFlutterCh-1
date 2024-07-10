import 'package:avd_ch_1/screens/task-1.4/provider/light_dark_theme_provider/light_dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class change_theme_using_provider extends StatefulWidget {
  const change_theme_using_provider({super.key});

  @override
  State<change_theme_using_provider> createState() =>
      _change_theme_using_providerState();
}

class _change_theme_using_providerState
    extends State<change_theme_using_provider> {
  @override
  Widget build(BuildContext context) {
    ThemeChangeProvider ThemeChangeProviderTrue =
        Provider.of<ThemeChangeProvider>(context, listen: true);
    ThemeChangeProvider ThemeChangeProviderFalse =
        Provider.of<ThemeChangeProvider>(context, listen: false);

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: AssetImage('assets/images/krupa.jpg'),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Krupa Parmar",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            ListTile(
                leading: ThemeChangeProviderTrue.isDark
                    ? Icon(Icons.light_mode)
                    : Icon(Icons.mode_night_rounded),
                title: Text(
                  '${ThemeChangeProviderTrue.isDark ? "Light Mode" : "Dark Mode"}',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                trailing: Switch(
                  value: ThemeChangeProviderTrue.isDark,
                  onChanged: (value) {
                    ThemeChangeProviderFalse.themeChange();
                  },
                )),
            ListTile(
              leading: Icon(Icons.grid_on),
              title: Text(
                'Story',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(
                'Setting and Privacy',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.mode_comment_outlined),
              title: Text(
                'Help Center',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text(
                'Notifications',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}
