import 'package:flutter/material.dart';
import 'package:time_machine_message/generated/assets/assets.gen.dart';

enum SocialSignInType {
  email,
  google,
}

extension SocialSignInTypeExt on SocialSignInType {
  Image? getIcon() {
    switch (this) {
      case SocialSignInType.email:
        return null;
      case SocialSignInType.google:
        return Assets.images.icon.social.googleIcon.image();
    }
  }
}
