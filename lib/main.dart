import 'package:flutter/material.dart';
import 'package:garuda_ott/bindings/bindings.dart';
import 'package:garuda_ott/presentation/presentation.dart';
import 'package:garuda_ott/services/services.dart';
import 'package:garuda_ott/utils/utils.dart';
import 'package:get/get.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Garuda Cinema',
      theme: CustomTheme.customTheme,
      home: const NavigationPage(),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: () => HomePage(), binding: HomeBindigs()),
        GetPage(name: "/search", page: () => SearchPage()),
        GetPage(name: "/watchlist", page: () => const WatchlistPage()),
        GetPage(name: "/downloads", page: () => const DownloadPage()),
        GetPage(name: "/more", page: () => const MorePage()),
        GetPage(name: "/login", page: () => const LoginPage()),
        GetPage(
            name: "/forgotPassword", page: () => const ForgotPasswordPage()),
        GetPage(name: "/otp", page: () => const OTPPage()),
        GetPage(name: "/register", page: () => const RegisterPage()),
        GetPage(
            name: "/navigation",
            page: () => const NavigationPage(),
            binding: NavigationBinding())
      ],
    );
  }
}
