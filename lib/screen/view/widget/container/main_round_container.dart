
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:time_machine_message/screen/theme/app_color.dart';

class MainRoundContainer extends StatelessWidget {
  const MainRoundContainer({
    super.key,
    required this.icon,
    required this.baseSize,
    this.color,
  });

  final IconData icon;
  final double baseSize;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        _buildNeumorphicCircle(baseSize, const Color(0xFFB8B8B8), 5),
        _buildNeumorphicCircle(baseSize - 15, const Color(0xFFC3C3C3), -10),
        NeumorphicIcon(
          icon,
          size: 72,
          style: NeumorphicStyle(
            color: color ?? AppColor.primary.withOpacity(0.5),
          ),
        )
      ],
    );
  }

  Widget _buildNeumorphicCircle(double size, Color color, double depth) {
    return Neumorphic(
      style: NeumorphicStyle(
        boxShape: const NeumorphicBoxShape.circle(),
        depth: depth,
        intensity: 0.5,
        surfaceIntensity: 0.1,
        shadowDarkColor: Colors.grey[700],
        shadowLightColor: Colors.white.withOpacity(0.7),
        color: AppColor.backgroundColor,
      ),
      child: SizedBox(
        width: size,
        height: size,
      ),
    );
  }
}
