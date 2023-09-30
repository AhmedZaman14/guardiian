import 'package:flutter/material.dart';
import 'package:guardiian/constants/routes.dart';
import 'package:guardiian/screens/permission.dart';
import 'package:guardiian/screens/wallet_creation/authentication_page.dart';
import 'package:guardiian/screens/wallet_creation/create_password.dart';
import 'package:guardiian/screens/wallet_creation/generate_mnemonics_page.dart';
import 'package:guardiian/screens/wallet_creation/importing_loading_page.dart';
import 'package:guardiian/screens/wallet_creation/importing_mainnet_page.dart';
import 'package:guardiian/screens/wallet_creation/secureWallet_page.dart';
import 'package:guardiian/screens/wallet_creation/transcribe_mnemonics_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guardiian',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PermissionPage(),
      routes: {
        routeCreatePassword: (context) => const CreatePassword(),
        routeAuthenticationPage: (context) => const AuthenticationPage(),
        routeSecureWalletPage: (context) => const SecureWalletPage(),
        routeGenerateMnemonicsPage: (context) => const GenerateMnemonicsPage(),
        routeTranscribeMnemonicsPage: (context) =>
            const TranscribeMnemonicsPage(),
        routeImportingMainnetPage: (context) => const ImportingMainnetPage(),
        routeMainnetImportingLoadingPage: (context) =>
            const MainnetImportingLoadingPage(),
      },
    );
  }
}
