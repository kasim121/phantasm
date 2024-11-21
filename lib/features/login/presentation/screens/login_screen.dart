import 'package:flutter/material.dart';
import 'package:phantasm/confi/themes/app_colors.dart';
import 'package:provider/provider.dart';

import '../../../../confi/themes/app_text_style.dart';
import '../providers/login_provider.dart';
import '../widgets/custom_googlesigin_button.dart';
import '../widgets/custom_login_button.dart';
import '../widgets/custom_login_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loginProvider = Provider.of<LoginProvider>(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 100),
                    Text(
                      'Hello Again!',
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 28,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Welcome Back You’ve Been Missed!',
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.grayShade,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 40),
                    Text(
                      'Email Address',
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8),
                    const CustomTextField(
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Password',
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 8),
                    CustomTextField(
                      isPassword: true,
                      isPasswordVisible: loginProvider.isPasswordVisible,
                      onTogglePasswordVisibility:
                          loginProvider.togglePasswordVisibility,
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Recovery Password',
                          style: AppTextStyles.airbnbCerealText(
                            color: AppColors.grayShade,
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    CustomLoginButton(
                      text: 'Sign In',
                      onPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                      backgroundColor: AppColors.customBlue,
                      borderRadius: 50.0,
                      height: 25,
                    ),
                    const SizedBox(height: 15),
                    CustomIconButton(
                      text: 'Sign in with Google',
                      onPressed: () {},
                      backgroundColor: AppColors.darkBackground,
                      textColor: AppColors.textPrimary,
                      height: 25,
                      borderRadius: 50,
                    ),
                    const SizedBox(height: 50),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {},
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: "Don't have an account? ",
                                style: AppTextStyles.airbnbCerealText(
                                  color: AppColors.grayShade,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: 'Sign Up for free',
                                style: AppTextStyles.airbnbCerealText(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 40.0,
              left: 20.0,
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Container(
                  width: 44.0,
                  height: 44.0,
                  decoration: BoxDecoration(
                    color: AppColors.darkBackground,
                    borderRadius: BorderRadius.circular(22.0),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/arrow.png',
                      width: 22.0,
                      height: 22.0,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
