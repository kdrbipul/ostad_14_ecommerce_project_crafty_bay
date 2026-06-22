import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';

import '../../../../app/app_colors.dart';
import '../../../../app/extensions/localization_extension.dart';
import '../providers/otp_timer_providers.dart';
import '../widgets/app_logo.dart';

class VerifyOTPScreen extends StatefulWidget {
  const VerifyOTPScreen({super.key});

  static const String name = '/verify-otp';

  @override
  State<VerifyOTPScreen> createState() => _VerifyOTPScreenState();
}

class _VerifyOTPScreenState extends State<VerifyOTPScreen> {
  final PinInputController _otpTEController = PinInputController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final OtpTimerProviders _otpTimerProviders = OtpTimerProviders(60);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _otpTimerProviders.startTimer();
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return ChangeNotifierProvider.value(
      value: _otpTimerProviders,
      child: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Padding(
              padding: const .all(24),
              child: Form(
                key: _formKey,
                autovalidateMode: .onUserInteraction,
                onChanged: () {},
                child: Column(
                  children: [
                    const SizedBox(height: 80),
                    AppLogo(width: 100),
                    const SizedBox(height: 16),
                    Text('Verify OTP', style: textTheme.titleLarge),
                    const SizedBox(height: 6),
                    Text(
                      'Enter your OTP that has been send to your email address',
                      style: textTheme.labelLarge,
                    ),
                    const SizedBox(height: 16),
                    MaterialPinField(
                      length: 4,
                      pinController: _otpTEController,
                      keyboardType: .number,
                      blinkDuration: Duration(milliseconds: 300),
                      theme: MaterialPinTheme(
                        fillColor: Colors.transparent,
                        focusedFillColor: Colors.transparent,
                        focusedBorderColor: AppColors.themeColor,
                        completeFillColor: AppColors.themeColor,
                      ),
                    ),
                    const SizedBox(height: 16),
                    FilledButton(
                      onPressed: _onTapSignInButton,
                      child: Text(context.localization.verify),
                    ),
                    const SizedBox(height: 16),
                    Consumer<OtpTimerProviders>(
                      builder: (context, _, _) {
                        if (_otpTimerProviders.secondsLeft == 0) {
                          return TextButton(
                            onPressed: _onTapResendOTP,
                            child: Text("Resend OTP"),
                          );
                        } else {
                          return RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Resend otp after',
                                  style: TextStyle(color: Colors.black),
                                ),
                                TextSpan(
                                  text: ' ${_otpTimerProviders.secondsLeft}s',
                                  style: TextStyle(color: AppColors.themeColor),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    if (_formKey.currentState!.validate()) {}
  }

  void _onTapResendOTP() {
    _otpTimerProviders.startTimer();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _otpTEController.dispose();
    super.dispose();
  }
}
