import 'package:time_machine_message/build_config/build_config.dart';

class Dev implements BuidConfig {
  @override
  String get baseUrl => '';

  @override
  String get flavor => 'dev';
}
