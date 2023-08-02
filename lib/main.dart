import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:qrcafe/navigate.dart';

import 'constants/const_screen/no_connection_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    EasyLocalization(
      path: 'assets/localizations',
      startLocale: const Locale('tr', 'TR'),
      supportedLocales: const [
        Locale('tr', 'TR'),
        Locale('en', 'US'),
      ],
      fallbackLocale: const Locale('tr', 'TR'),
      child: const ProviderScope(
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      routerConfig: goRouter,
      builder: (context, child) {
        return StreamBuilder<ConnectivityResult>(
          stream: Connectivity().onConnectivityChanged,
          builder: (context, snapshot) {
            final connectivityResult = snapshot.data;
            if (connectivityResult == ConnectivityResult.none ||
                connectivityResult == null) return const NoConnectionScreen();
            return child!;
          },
        );
      },
    );
  }
}

class MyHomePage extends ConsumerWidget {
  MyHomePage({super.key});
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late final QRViewController controller;

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400,
              width: 300,
              child: QRView(
                key: qrKey,
                onQRViewCreated: (controller) {
                  this.controller = controller;
                  controller.scannedDataStream.listen(
                    (scanData) async {
                      // await controller.pauseCamera().whenComplete(
                      //       () => context.pushNamed(
                      //         AppRoute.successPage.name,
                      //         extra: waitTwoSeconds(),
                      //       ),
                      //     );
                    },
                  );
                },
                overlay: QrScannerOverlayShape(
                  borderRadius: 10,
                  borderLength: 30,
                  borderWidth: 10,
                  cutOutSize: 300.0,
                ),
              ),
            ),
            Container(),
          ],
        ),
      ),
    );
  }
}
