import 'package:flutter/material.dart';
import 'package:patient_health/product/language/language_items.dart';
import 'package:patient_health/screen/signUp.dart';
import '../util/theme/page_color.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

final bool _isVisible = true;

class _LoginScreenState extends State<LoginScreen> {
  final _obsureText = '*';

  void _chancheUser() {
    if (_isVisible != _isVisible) {
      //
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: _colorBoxdecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: ProjectPadding.pagePaddingVertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    languageItems.login,
                    style:
                        TextStyle(color: ColorsItems.textColor, fontSize: 40),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    languageItems.welcomeTitle,
                    style:
                        TextStyle(color: ColorsItems.textColor, fontSize: 18),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: Container(
                decoration: _borderBoxdecoration(),
                child: Padding(
                  padding: ProjectPadding.pagePaddingVertical,
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: _boxDEcoration(),
                          child: _formLog(),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _loginButton(),
                        const SizedBox(
                          child: Text('or'),
                          height: 20,
                        ),
                        _Signup(),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

// theme color decoration
  BoxDecoration _colorBoxdecoration() {
    return const BoxDecoration(
        gradient: LinearGradient(begin: Alignment.topCenter, colors: [
      ColorsItems.kapalituruncu,
      ColorsItems.turuncu,
      ColorsItems.sarimsi
    ]));
  }

  BoxDecoration _borderBoxdecoration() {
    return const BoxDecoration(
        color: ColorsItems.textColor,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(60), topRight: Radius.circular(60)));
  }

  BoxDecoration _boxDEcoration() {
    return BoxDecoration(
        color: ColorsItems.textColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
              color: Color.fromRGBO(225, 95, 27, .3),
              blurRadius: 20,
              offset: Offset(0, 10))
        ]);
  }

  Form _formLog() {
    return Form(
      child: Column(
        children: <Widget>[
          _formcontainer(),
          _formpasswordcontainer(),
        ],
      ),
    );
  }

//email textfield
  Container _formcontainer() {
    return Container(
      padding: ProjectPadding.pagePaddingVertical,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: TextField(
        // focusNode: _emailFocusNode,
        textInputAction: TextInputAction.next,
        controller: widget.emailController,
        autofillHints: [AutofillHints.email],
        onSubmitted: (value) {
          // _emailFocusNode.unfocus();
          //FocusScope.of(context).requestFocus(_passwordFocusNode);
        },
        decoration: const InputDecoration(
          hintText: languageItems.hitextemail,
          hintStyle: TextStyle(color: ColorsItems.decorationColor),
          border: InputBorder.none,
        ),
      ),
    );
  }

//password textfield
  Container _formpasswordcontainer() {
    return Container(
      padding: ProjectPadding.pagePaddingVertical,
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.grey.shade200)),
      ),
      child: TextField(
        // focusNode: _passwordFocusNode,
        obscureText: _isVisible,
        textInputAction: TextInputAction.done,
        controller: widget.passwordController,
        keyboardType: TextInputType.visiblePassword,
        autofillHints: const [AutofillHints.password],
        onSubmitted: (value) {
          // signInRequest();
          //textFocusNodePassword.unfocus();
        },
        decoration: const InputDecoration(
          hintText: languageItems.hitexpassword,
          hintStyle: TextStyle(color: ColorsItems.decorationColor),
          border: InputBorder.none,
        ),
      ),
    );
  }

// login buttonu
  MaterialButton _loginButton() {
    return MaterialButton(
      onPressed: () {
        //   () async {
        //                 setState(() {
        //                   _emailFocusNode.unfocus();
        //                   _passwordFocusNode.unfocus();
        //                 });
        //                 signInRequest();
        //               }
      },
      height: 50,
      color: ColorsItems.buttoncolor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50),
      ),
      child: const Center(
        child: Text(
          languageItems.loginButton,
          style: TextStyle(
              color: ColorsItems.textColor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

//signup buttonu
MaterialButton _Signup() {
  return MaterialButton(
    onPressed: () {},
    //    Get.to(() => const SignupScreen(), child: const Text('data')),
    height: 50,
    color: ColorsItems.buttoncolor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
    child: const Center(
      child: Text(
        languageItems.logonButton,
        style: TextStyle(
            color: ColorsItems.textColor, fontWeight: FontWeight.bold),
      ),
    ),
  );
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.all(20);
}
