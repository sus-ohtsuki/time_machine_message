import 'package:flutter/material.dart';
import 'package:time_machine_message/generated/l10n.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';
import 'package:time_machine_message/screen/view/widget/app_text_form_field.dart';

class PasswordFormWidget extends StatelessWidget {
  const PasswordFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      initialValue: '',
      hintText: S.of(context).password,
      prefixIcon: Icon(
        Icons.key_rounded,
        size: 24,
        color: AppColor.primary.withOpacity(0.7),
      ),
    );
  }
}
