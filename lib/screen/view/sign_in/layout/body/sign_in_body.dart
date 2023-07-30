import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:sizer/sizer.dart';
import 'package:time_machine_message/generated/l10n.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/body/form/mail_form_widget.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/body/form/password_form_widget.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/body/social_sign_in_widget.dart';
import 'package:time_machine_message/screen/view/widget/button/app_button.dart';
import 'package:time_machine_message/screen/view/widget/button/app_text_button.dart';
import 'package:time_machine_message/screen/view/widget/container/main_round_container.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 5.h),
        Center(
          child: MainRoundContainer(icon: Icons.lock_open, baseSize: 35.w),
        ),
        SizedBox(height: 5.h),
        const MailFormWidget(),
        const SizedBox(height: 32),
        const PasswordFormWidget(),
        SizedBox(height: 5.h),
        const _ForgotPasswordButton(),
        SizedBox(height: 5.h),
        const _SignInButton(),
        SizedBox(height: 5.h),
        const SocialSignInWidget(),
        SizedBox(height: 5.h),
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

class _ForgotPasswordButton extends StatelessWidget {
  const _ForgotPasswordButton();

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      onPressed: () {},
      text: Row(
        children: [
          Text(
            S.of(context).forgotPassword,
            style: const TextStyle(color: AppColor.secondary, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class _SignInButton extends StatelessWidget {
  const _SignInButton();

  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: Text(
        S.of(context).signIn,
        style: Theme.of(context).textTheme.titleSmall,
      ),
    );
  }
}
