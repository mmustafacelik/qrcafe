import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:lottie/lottie.dart';
import 'package:qrcafe/constants/assets_path.dart';

class CustomElevatedButton extends HookWidget {
  final double radius;
  final VoidCallback onPressed;
  final Widget child;

  const CustomElevatedButton({
    Key? key,
    this.radius = 10,
    required this.onPressed,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLoading = useState(false);

    void handleButtonPress() {
      isLoading.value = true;
      Future.delayed(const Duration(seconds: 2), () {
        isLoading.value = false;
      });

      onPressed();
    }

    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        onPressed: isLoading.value ? null : handleButtonPress,
        child: isLoading.value
            ? Lottie.asset(AssetsPath.loadingLottie, fit: BoxFit.fill)
            : child,
      ),
    );
  }
}
