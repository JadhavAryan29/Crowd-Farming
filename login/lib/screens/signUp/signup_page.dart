import 'package:flutter/material.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/screens/signUp/verify_page.dart';
import 'package:login/widget/widgets.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController _controller = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: SafeArea(
            child: Column(
              children: [
                Container(
                  height: 150,
                  child: Center(
                      child: Text(
                    'Crowd Farming',
                    style: kHeading,
                  )),
                ),
                Container(
                  height: 70,
                  child: Center(
                      child: Text(
                    'Sign Up',
                    style: kCoHeading,
                  )),
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
          
                      child: Column(children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            TextInput(
                              icon: (Icons.call),
                              hint: 'Phone Number',
                              inputType: TextInputType.phone,
                              inputAction: TextInputAction.next,
                              controller : _controller
                            ),
                          ],
                        ),
                      ]),
                    ),
                  ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text:
                            "We will sent you One Time Password on  registered mobile number ",
                        style: kSignUpText,
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(16)),
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => VerifyPage(_controller.text),
                            ),
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Send OTP',
                            style: kBodyText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
    required this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[100]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 16),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: Colors.white,
                size: 28,
              ),
            ),
            hintStyle: kBodyText,
          ),
          style: kBodyText,
          keyboardType: inputType,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
