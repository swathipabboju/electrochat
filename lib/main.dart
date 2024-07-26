import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_app/firebase_options.dart';
import 'package:sample_app/viewModel/loginViewModel.dart';
import 'package:sample_app/viewModel/otpViewModel.dart';
import 'package:sample_app/viewModel/resetPasswordViewModel.dart';
import 'package:sample_app/viewModel/setMpinViewModel.dart';
import 'package:sample_app/viewModel/validateMpinViewModel.dart';
import 'utils/AppColors/colors.dart';
import 'utils/Routes/appPages.dart';
import 'utils/Routes/appRoutes.dart';
import 'utils/Strings/strings.dart';
import 'viewModel/loginWithMobileViewModel.dart';

void main() async {
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
 
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginWithMobileViewModel()),
        ChangeNotifierProvider(create: (_) => LoginViewModel()),
        ChangeNotifierProvider(create: (_) => ResetPasswordModel()),
        ChangeNotifierProvider(create: (_) => OtpViewModel()),
        ChangeNotifierProvider(create: (_) => SetMpinViewModel()),
        ChangeNotifierProvider(create: (_) => ValidateMpinViewModel()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: AppStrings.title,
        initialRoute: AppRoutes.initial,
        routes: AppPages.routes,
        theme: ThemeData(
          primarySwatch: AppColors.navy,
        ),
      ),
    );
  }
}
