import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:time_machine_message/generated/l10n.dart';
import 'package:time_machine_message/model/social_sign_in_type.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';
import 'package:time_machine_message/screen/view/widget/button/app_button.dart';

class SocialSignInWidget extends StatelessWidget {
  const SocialSignInWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppButton(
      backgroundColor: AppColor.backgroundColor,
      text: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SocialSignInType.google.getIcon()!,
          const SizedBox(width: 16),
          Text(
            S.of(context).signInWithGoogle,
            style: Theme.of(context).textTheme.titleSmall,
          ),
        ],
      ),
    );
  }
}
