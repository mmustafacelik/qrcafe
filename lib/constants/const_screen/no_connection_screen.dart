import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:qrcafe/constants/assets_path.dart';

class NoConnectionScreen extends StatelessWidget {
  const NoConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(AssetsPath.noConnectionLottie),
          Text(
            'No Internet connection'.tr(),
          )
        ],
      ),
    );
  }
}
