import 'package:flutter/material.dart';
import 'package:guardiian/constants/colors.dart';
import 'package:guardiian/constants/routes.dart';
import 'package:guardiian/screens/buy_crypto_page.dart';
import 'package:guardiian/screens/home_screen.dart';
import 'package:guardiian/screens/notificatons_page.dart';
import 'package:guardiian/screens/permission.dart';
import 'package:guardiian/screens/search_crypto_page.dart';
import 'package:guardiian/screens/wallet_creation/add_mainnet_page.dart';
import 'package:guardiian/screens/wallet_creation/authentication_page.dart';
import 'package:guardiian/screens/wallet_creation/create_password.dart';
import 'package:guardiian/screens/wallet_creation/generate_mnemonics_page.dart';
import 'package:guardiian/screens/wallet_creation/importing_loading_page.dart';
import 'package:guardiian/screens/wallet_creation/importing_mainnet_page.dart';
import 'package:guardiian/screens/wallet_creation/secure_wallet_page.dart';
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
        colorScheme: ColorScheme.fromSeed(seedColor: prim),
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
        routeAddMainnetPage: (context) => const AddMainnetPage(),
        routeWalletHomeScreen: (context) => WalletHomeScreen(),
        routeNotificationPage: (context) => const NotificationsPage(),
        routeSearchCryptoPage: (context) => const SearchCryptoPage(),
        routeBuyCryptoPage: (context) => const BuyCryptoPage(),
      },
    );
  }
}
