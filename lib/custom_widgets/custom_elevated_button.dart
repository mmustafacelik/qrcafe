import 'package:flutter/material.dart';

// class CustomElevatedButton extends StatelessWidget {
//   const CustomElevatedButton({
//     super.key,
//     this.child,
//     this.radius,
//     required this.onPressed,
//   });
//   final Widget? child;
//   final BorderRadiusGeometry? radius;
//   final void Function()? onPressed;
//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//       child: ElevatedButton(
//         style: ElevatedButton.styleFrom(
//             shape: RoundedRectangleBorder(
//           borderRadius: radius ?? BorderRadius.circular(10),
//           //border radius equal to or more than 50% of width
//         )),
//         onPressed: onPressed,
//         child: child,
//       ),
//     );
//   }
// }

class CustomElevatedButton extends ElevatedButton {
  const CustomElevatedButton(
      {super.key,
      this.radius = 10,
      required super.onPressed,
      required super.child});
  final double radius;

  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(radius),
          //border radius equal to or more than 50% of width
        )),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
