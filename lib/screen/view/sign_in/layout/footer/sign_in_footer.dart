import 'package:flutter/material.dart';
import 'package:time_machine_message/generated/l10n.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/body/social_sign_in_widget.dart';
import 'package:time_machine_message/screen/view/widget/button/app_text_button.dart';

class SignInFooter extends StatelessWidget {
  const SignInFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SocialSignInWidget(),
        const Spacer(),
        AppTextButton(
          onPressed: () {},
          text: Row(
            children: [
              Text(
                S.of(context).signUp,
                style: const TextStyle(color: AppColor.secondary),
              ),
              const Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColor.secondary,
                size: 16,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
