import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:logger/logger.dart';
import 'package:time_machine_message/app.dart';
import 'package:time_machine_message/build_config/build_config.dart';
import 'package:time_machine_message/build_config/dev.dart';
import 'package:time_machine_message/generated/firebase_options_dev.dart'
    as dev_firebase;
import 'package:time_machine_message/generated/firebase_options_prod.dart'
    as pro_firebase;

final log = Logger();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  const flavorName = String.fromEnvironment('flavor');
  final providerContainer =
      ProviderContainer(overrides: await _overrides(flavorName));

  log.d('flavor: $flavorName');

  runApp(App(providerContainer: providerContainer));
}

Future<List<Override>> _overrides(String flavor) async {
  final overrides = <Override>[];

  if (flavor == 'dev') {
    overrides.add(buildConfifProvider.overrideWithValue(Dev()));
    await Firebase.initializeApp(
      options: dev_firebase.DefaultFirebaseOptions.currentPlatform,
    );
    return overrides;
  }

  await Firebase.initializeApp(
    options: pro_firebase.DefaultFirebaseOptions.currentPlatform,
  );
  return overrides;
}
