import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';
import 'package:time_machine_message/generated/l10n.dart';
import 'package:time_machine_message/screen/router/router.dart';
import 'package:time_machine_message/screen/theme/app_theme.dart';

class App extends StatelessWidget {
  const App({super.key, required this.providerContainer});

  final ProviderContainer providerContainer;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      parent: providerContainer,
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            theme: AppTheme.themeData(context),
            routerConfig: router,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
          );
        },
      ),
    );
  }
}
