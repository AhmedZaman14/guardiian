import 'package:flutter/material.dart';
import 'package:guardiian/constants/colors.dart';
import 'package:guardiian/constants/routes.dart';
import 'package:guardiian/screens/add_wallets_page.dart';
import 'package:guardiian/screens/buy_crypto_page.dart';
import 'package:guardiian/screens/buying_method_page.dart';
import 'package:guardiian/screens/currency_preference_page.dart';
import 'package:guardiian/screens/home_screen.dart';
import 'package:guardiian/screens/node_settings_page.dart';
import 'package:guardiian/screens/notificatons_page.dart';
import 'package:guardiian/screens/permission.dart';
import 'package:guardiian/screens/price_alerts_page.dart';
import 'package:guardiian/screens/push_Notifications_page.dart';
import 'package:guardiian/screens/receive_crypto_page.dart';
import 'package:guardiian/screens/search_crypto_page.dart';
import 'package:guardiian/screens/security_page.dart';
import 'package:guardiian/screens/select_currency_page.dart';
import 'package:guardiian/screens/show_mnemonics_page.dart';
import 'package:guardiian/screens/swap_page.dart';
import 'package:guardiian/screens/wallet_creation/add_mainnet_page.dart';
import 'package:guardiian/screens/wallet_creation/authentication_page.dart';
import 'package:guardiian/screens/wallet_creation/create_password.dart';
import 'package:guardiian/screens/wallet_creation/generate_mnemonics_page.dart';
import 'package:guardiian/screens/wallet_creation/importing_loading_page.dart';
import 'package:guardiian/screens/wallet_creation/importing_mainnet_page.dart';
import 'package:guardiian/screens/wallet_creation/secure_wallet_page.dart';
import 'package:guardiian/screens/wallet_creation/transcribe_mnemonics_page.dart';
import 'package:guardiian/screens/wallet_screen.dart';

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
        routeSearchCryptoPage: (context) => SearchCryptoPage(),
        routeBuyCryptoPage: (context) => const BuyCryptoPage(),
        routeBuyingMethodPage: (context) => const BuyingMethodPage(),
        routeReceiveCryptoPage: (context) => const ReceiveCryptoPage(),
        routeCurrencyPreferencePage: (context) =>
            const CurrencyPreferencePage(),
        routeSelectCurrencyPage: (context) => const SelectCurrencyPage(),
        routeWalletPage: (context) => const WalletScreen(),
        routeAddWalletsPage: (context) => const AddWalletPage(),
        routeShowMnemonicsPage: (context) => const ShowMnemonicsPage(),
        routeSecurityPage: (context) => const SecurityPage(),
        routePriceAlertsPage: (context) => const PriceAlertsPage(),
        routeNodeSettingsPage: (context) => const NodeSettingsPage(),
        routeSwapPage: (context) => const SwapPage(),
        routePushNotificationsPage: (context) => const PushNotificationPage(),
      },
    );
  }
}
