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

    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/krupa.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Krupa Parmar",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 25,
              ),
              ListTile(
                  leading: ThemeChangeProviderTrue.isDark
                      ? Icon(
                          Icons.mode_night_rounded,
                          color: Theme.of(context).colorScheme.primary,
                        )
                      : Icon(
                          Icons.light_mode,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                  title: Text(
                    '${ThemeChangeProviderTrue.isDark ? "Dark Mode" : "Light Mode"}',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  trailing: Switch(
                    value: ThemeChangeProviderTrue.isDark,
                    onChanged: (value) {
                      ThemeChangeProviderFalse.themeChange();
                    },
                  )),
              //  color: Theme.of(context).colorScheme.secondary,
              ListTile(
                leading: Icon(Icons.grid_on,
                    color: Theme.of(context).colorScheme.secondary),
                title: Text(
                  'Story',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.settings,
                  color: Theme.of(context).colorScheme.onSecondary,
                ),
                title: Text(
                  'Setting and Privacy',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.mode_comment_outlined,
                  color: Theme.of(context).colorScheme.onPrimary,
                ),
                title: Text(
                  'Help Center',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                  color: Theme.of(context).colorScheme.primary,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
