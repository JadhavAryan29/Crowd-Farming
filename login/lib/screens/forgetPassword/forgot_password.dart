import 'package:flutter/material.dart';
import 'package:login/screens/signUp/details_page.dart';
import 'package:login/screens/forgetPassword/fp_two_page.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  _ForgotPasswordState createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
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
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Reset Password',
                      style: kCoHeading,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
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
                            Padding(
                              padding: const EdgeInsets.all(18.0),
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
                          ],
                        ),
                          Column(
                        children: [
                          SizedBox(height: 34,),
                          Container(
                            decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(16)),
                            child: MaterialButton(
                              onPressed:(){
                                Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ForgotPasswordTwo(),
                                ),
                              );
                              } ,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 6),
                                child: Text('Send OTP',style: kBodyText,),
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
        child: TextFormField(
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