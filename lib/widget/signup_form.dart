import 'package:flutter/material.dart';
import 'package:patient_health/product/language/language_items.dart';

class TsignupForm extends StatefulWidget {
  const TsignupForm({
    super.key,
  });

  @override
  State<TsignupForm> createState() => _TsignupFormState();
}

class _TsignupFormState extends State<TsignupForm> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController idnumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                //name
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: languageItems.nameLabelText,
                      prefixIcon: Icon(Icons.perm_identity_rounded)),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              //lastname
              Expanded(
                child: TextFormField(
                  expands: false,
                  decoration: const InputDecoration(
                      labelText: languageItems.lastnamLabelText,
                      prefixIcon: Icon(Icons.perm_identity_rounded)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          //username
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: languageItems.UserNameLabelText,
                prefixIcon: Icon(Icons.perm_identity_rounded)),
          ),
          //email
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: languageItems.emailLabelText,
                prefixIcon: Icon(Icons.email)),
          ),
          //phone number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: languageItems.phoneLabelText,
                prefixIcon: Icon(Icons.call)),
          ),
          //ıd number
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
                labelText: languageItems.idlabelText,
                prefixIcon: Icon(Icons.perm_identity_rounded)),
          ),
          //pasword
          TextFormField(
            expands: false,
            decoration: const InputDecoration(
              labelText: languageItems.passwordLabelText,
              prefixIcon: Icon(Icons.password),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {},
                child: const Text(languageItems.buttonbarText)),
          )
        ],
      ),
    );
  }
}
