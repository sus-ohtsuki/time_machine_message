import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';

class SignInLayout extends StatelessWidget {
  const SignInLayout({
    super.key,
    required this.body,
    required this.footer,
  });

  final Widget body;
  final Widget footer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColor.backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              // flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: body,
              ),
            ),
            // Expanded(child: footer),
          ],
        ),
      ),
    );
  }
}
