import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/features/auth/presentation/screens/verify_otp_screen.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/features/shared/presentation/utils/validators.dart';

import '../../../../app/extensions/localization_extension.dart';
import '../widgets/app_logo.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  static const String name = '/sing-up';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _phoneTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();
  final TextEditingController _confirmPasswordTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);

    return SafeArea(
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
                  const SizedBox(height: 16),
                  AppLogo(width: 80),
                  const SizedBox(height: 16),
                  Text('Create an Account', style: textTheme.titleLarge),
                  const SizedBox(height: 6),
                  Text('Enter your email address', style: textTheme.labelLarge),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _firstNameTEController,
                    textInputAction: .next,
                    keyboardType: .text,
                    decoration: InputDecoration(
                      labelText: context.localization.firstName,
                      hintText: context.localization.firstName,
                    ),
                    validator: (String? value) => Validators.validateInput(
                      value,
                      "Enter your first name",
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _lastNameTEController,
                    textInputAction: .next,
                    keyboardType: .text,
                    decoration: InputDecoration(
                      labelText: context.localization.lastName,
                      hintText: context.localization.lastName,
                    ),
                    validator: (String? value) =>
                        Validators.validateInput(value, "Enter your last name"),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _emailTEController,
                    textInputAction: .next,
                    keyboardType: .emailAddress,
                    decoration: InputDecoration(
                      labelText: context.localization.email,
                      hintText: context.localization.email,
                    ),
                    validator: (String? value) =>
                        Validators.validateEmail(value),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _phoneTEController,
                    textInputAction: .next,
                    keyboardType: .number,
                    decoration: InputDecoration(
                      labelText: context.localization.phone,
                      hintText: context.localization.phone,
                    ),
                    validator: (String? value) => Validators.validateInput(
                      value,
                      "Enter your phone number",
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _cityTEController,
                    textInputAction: .next,
                    keyboardType: .number,
                    decoration: InputDecoration(
                      labelText: context.localization.city,
                      hintText: context.localization.city,
                    ),
                    validator: (String? value) => Validators.validateInput(
                      value,
                      "Enter your City",
                    ),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: true,
                    keyboardType: .visiblePassword,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      labelText: context.localization.password,
                      hintText: context.localization.password,
                    ),
                    validator: (input) => Validators.validatePassword(input),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _confirmPasswordTEController,
                    obscureText: true,
                    keyboardType: .visiblePassword,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      labelText: context.localization.confirmPassword,
                      hintText: context.localization.confirmPassword,
                    ),
                    validator: (input) => Validators.validatePassword(input),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _onTapSignUpButton,
                    child: Text(context.localization.signUp),
                  ),
                  TextButton(
                    onPressed: _onTapSignInButton,
                    child: Text("Already have an account? Sign In"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignInButton() {
    Navigator.pop(context);
  }

  void _onTapSignUpButton() {
    // if (_formKey.currentState!.validate()) {}
    Navigator.pushNamed(context, VerifyOTPScreen.name);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _emailTEController.dispose();
    _phoneTEController.dispose();
    _cityTEController.dispose();
    _passwordTEController.dispose();
    _confirmPasswordTEController.dispose();
    super.dispose();
  }
}
