import 'package:flutter/material.dart';
import 'package:patient_health/product/language/language_items.dart';

import '../widget/signup_form.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Text(languageItems.signupHead,
                style: Theme.of(context).textTheme.headlineMedium),
            const SizedBox(height: 20),
            //Form
            const TsignupForm(),
          ],
        ),
      ),
    );
  }
}
