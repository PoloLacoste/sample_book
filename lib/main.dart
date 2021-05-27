import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:storybook_flutter/storybook_flutter.dart';
import 'package:fluent_ui/fluent_ui.dart' as fui;
import 'package:macos_ui/macos_ui.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Storybook(
      themeMode: ThemeMode.light,
      children: [
        buildStory(
          name: 'Material Button',
          child: ElevatedButton(
            child: Text('Click me !'),
            onPressed: () {},
          ),
        ),
        buildStory(
          name: 'Cupertino Button',
          child: CupertinoButton(
            child: Text('Click me !'),
            color: CupertinoColors.activeBlue,
            onPressed: () {},
          ),
        ),
        buildStory(
          name: 'Fluent Button',
          child: buildFluentWidget(
            child: fui.Button(
              child: Text('Click me !'),
              onPressed: () {},
            ),
          ),
        ),
        buildStory(
          name: 'MacOS button',
          child: buildMacOSWidget(
            child: PushButton(
              child: Text('Click me !'),
              buttonSize: ButtonSize.large,
              onPressed: () {},
            ),
          ),
        ),
        buildStory(
          name: 'Material checkbox off',
          child: Checkbox(
            value: false,
            onChanged: (bool? val) {}
          ),
        ),
        buildStory(
          name: 'Cupertino checkbox off',
          child: CupertinoSwitch(
            value: false,
            onChanged: (bool val) {}
          ),
        ),
        buildStory(
          name: 'Fluent checkbox off',
          child: buildFluentWidget(
            child: fui.Checkbox(
              checked: false,
              onChanged: (bool? val) {}
            ),
          ),
        ),
        buildStory(
          name: 'MacOS checkbox off',
          child: buildMacOSWidget(
            child: MacosSwitch(
              value: false,
              onChanged: (bool val) {},
            ),
          ),
        ),
        buildStory(
          name: 'Material checkbox on',
          child: Checkbox(
            value: true,
            onChanged: (bool? val) {}
          ),
        ),
        buildStory(
          name: 'Cupertino checkbox on',
          child: CupertinoSwitch(
            value: true,
            onChanged: (bool val) {}
          ),
        ),
        buildStory(
          name: 'Fluent checkbox on',
          child: buildFluentWidget(
            child: fui.Checkbox(
              checked: true,
              onChanged: (bool? val) {}
            ),
          ),
        ),
        buildStory(
          name: 'MacOS checkbox on',
          child: buildMacOSWidget(
            child: MacosSwitch(
              value: true,
              onChanged: (bool val) {},
            ),
          ),
        ),
      ],
    );
  }

  Story buildStory({required String name, required Widget child}) {
    return Story(
      name: name,
      builder: (context, builder) => child,
    );
  }

  fui.FluentTheme buildFluentWidget({required Widget child}) {
    return fui.FluentTheme(data: fui.ThemeData(), child: child);
  }

  MacosTheme buildMacOSWidget({required Widget child}) {
    return MacosTheme(data: MacosThemeData(), child: child);
  }
}
