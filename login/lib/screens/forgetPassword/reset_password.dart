import 'package:flutter/material.dart';
import 'package:login/screens/signUp/details_page.dart';
import 'package:login/screens/forgetPassword/submit_page.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
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
                      'Enter A New Password',
                      style: kCoHeading,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            PasswordInput(
                              icon: (Icons.lock),
                              hint: 'Password',
                              inputAction: TextInputAction.next,
                            ),
                            PasswordInput(
                              icon: (Icons.lock),
                              hint: 'Re-enter Password',
                              inputAction: TextInputAction.done,
                            ),
                          ],
                        ),
                        Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(16)),
                            child: MaterialButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>SubmitPage(),),);
                              } ,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Text('Submit',style: kBodyText,),
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