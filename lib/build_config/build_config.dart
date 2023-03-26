import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:time_machine_message/build_config/pro.dart';

abstract class BuidConfig {
  String get baseUrl;
  String get flavor;
}

/// 環境ごとに変わらないもの
extension BuidConfigConsts on BuidConfig {}

final buildConfifProvider = Provider<BuidConfig>((ref) {
  return Pro();
});
