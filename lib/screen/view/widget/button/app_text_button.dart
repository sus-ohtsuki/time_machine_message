// ignore: must_be_immutable
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';

// ignore: must_be_immutable
class AppTextButton extends StatelessWidget {
  AppTextButton({
    super.key,
    required this.text,
    this.backgroundColor,
    this.onPressed,
    this.padding,
  });

  final Widget text;
  final Color? backgroundColor;
  void Function()? onPressed;
  final EdgeInsets? padding;

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: padding,
      onPressed: onPressed ?? () {},
      style: NeumorphicStyle(
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        depth: 3,
        intensity: 0.6,
        surfaceIntensity: 0.2,
        shadowDarkColor: Colors.black38,
        shadowLightColor: Colors.white60,
        color: AppColor.backgroundColor,
      ),
      child: IntrinsicWidth(child: Center(child: text)),
    );
  }
}
