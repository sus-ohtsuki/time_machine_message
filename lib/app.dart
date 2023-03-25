import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:time_machine_message/screen/router/router.dart';
import 'package:time_machine_message/screen/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp.router(
          theme: AppTheme.themeData(context),
          routerConfig: router,
        );
      },
    );
  }
}
