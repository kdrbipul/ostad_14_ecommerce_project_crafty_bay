import 'package:flutter/material.dart';
import 'package:ostad_14_ecommerce_project_crafty_bay/features/shared/presentation/utils/validators.dart';

import '../../../../app/extensions/localization_extension.dart';
import '../widgets/app_logo.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = '/sing-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

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
              onChanged: (){},
              child: Column(
                children: [
                  const SizedBox(height: 80),
                  AppLogo(width: 100),
                  const SizedBox(height: 16),
                  Text('Welcome Back', style: textTheme.titleLarge),
                  const SizedBox(height: 6),
                  Text('Enter your email address', style: textTheme.labelLarge),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _emailTEController,
                    textInputAction: .next,
                    keyboardType: .emailAddress,
                    decoration: InputDecoration(
                      labelText: context.localization.email,
                      hintText: context.localization.email,
                    ),
                    validator: (String? value) => Validators.validateEmail(value),
                  ),
                  const SizedBox(height: 8),
                  TextFormField(
                    controller: _passwordTEController,
                    obscureText: true,
                    obscuringCharacter: '*',
                    decoration: InputDecoration(
                      labelText: context.localization.password,
                      hintText: context.localization.password,
                    ),
                    validator: (input) => Validators.validatePassword(input),
                  ),
                  const SizedBox(height: 16),
                  FilledButton(
                    onPressed: _onTapSignInButton,
                    child: Text(context.localization.signIn),
                  ),
                  TextButton(onPressed: _onTapSignUpButton,
                      child: Text("Dont have an account? Sign Up"),
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
    if(_formKey.currentState!.validate()) {

    }
  }
  void _onTapSignUpButton() {}

  @override
  void dispose() {
    // TODO: implement dispose
    _emailTEController.dispose();
    _passwordTEController.dispose();
    super.dispose();
  }
}
