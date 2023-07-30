import 'package:flutter/material.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/body/sign_in_body.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/footer/sign_in_footer.dart';
import 'package:time_machine_message/screen/view/sign_in/layout/sign_in_layout.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: const SignInLayout(
        body: SignInBody(),
        footer: SignInFooter(),
      ),
    );
  }
}
