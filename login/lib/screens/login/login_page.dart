import 'package:flutter/material.dart';
import 'package:login/screens/forgetPassword/forgot_password.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/screens/bottomNav/bottom_bar.dart';
import 'package:login/screens/signUp/signup_page.dart';
import 'package:login/widget/widgets.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      BackgroundImage(),
      Scaffold(
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
              SizedBox(
                height: 100,
              ),
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextInput(
                            icon: (Icons.call),
                            hint: 'Phone Number',
                            inputType: TextInputType.phone,
                            inputAction: TextInputAction.next,
                          ),
                          PasswordInput(
                            icon: (Icons.lock),
                            hint: 'Password',
                            inputAction: TextInputAction.done,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPassword(),
                                ),
                              );
                            },
                            child: Text(
                              'Forgot Password?',
                              style: kBodyText,
                            ),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 80,
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(16)),
                            child: MaterialButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BottomBar(),
                                  ),
                                );
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  'Sign In',
                                  style: kBodyText,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpPage(),
                              ),
                            );
                          },
                          child: RichText(
                            text: TextSpan(
                              text: "Don't have an account ? ",
                              style: kSignUpText,
                              children: <TextSpan>[
                                TextSpan(
                                  text: "SignUp",
                                  style: kSignUpText,
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
            ],
          ),
        ),
      ),
    ]);
  }
}

class TextInput extends StatelessWidget {
  const TextInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
  final TextInputAction inputAction;

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

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextField(
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
          obscureText: true,
          style: kBodyText,
          textInputAction: inputAction,
        ),
      ),
    );
  }
}
