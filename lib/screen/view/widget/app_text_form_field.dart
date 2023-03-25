import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    required this.initialValue,
    required this.hintText,
    this.prefixIcon,
  });

  final String initialValue;
  final String hintText;
  final Icon? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: AppColor.backgroundColor,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(32)),
        depth: -6,
        intensity: 0.8,
        surfaceIntensity: 0.1,
        shadowDarkColor: Colors.grey[700],
        shadowLightColor: Colors.white.withOpacity(0.7),
      ),
      child: TextFormField(
        initialValue: initialValue,
        style: Theme.of(context).textTheme.bodyLarge,
        cursorColor: AppColor.primary,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          hintText: hintText,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 18,
          ),
        ),
      ),
    );
  }
}
