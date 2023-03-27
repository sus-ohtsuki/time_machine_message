import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';

// ignore: must_be_immutable
class AppButton extends StatelessWidget {
  AppButton({
    super.key,
    this.height = 48,
    this.width = double.infinity,
    required this.text,
    this.backgroundColor,
    this.onPressed,
  });

  final double height;
  final double width;
  final Widget text;
  final Color? backgroundColor;
  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: NeumorphicButton(
        onPressed: onPressed ?? () {},
        style: NeumorphicStyle(
          color: backgroundColor ?? AppColor.buttonPrimary,
          intensity: 0.8,
          surfaceIntensity: 0.5,
          boxShape: NeumorphicBoxShape.roundRect(
            BorderRadius.circular(32),
          ),
          shadowDarkColor: Colors.grey[700],
          shadowLightColor: Colors.white.withOpacity(0.7),
        ),
        child: Center(child: text),
      ),
    );
  }
}
