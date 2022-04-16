import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login/screens/forgetPassword/reset_password.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class ForgotPasswordTwo extends StatefulWidget {
  const ForgotPasswordTwo({ Key? key }) : super(key: key);

  @override
  _ForgotPasswordTwoState createState() => _ForgotPasswordTwoState();
}

class _ForgotPasswordTwoState extends State<ForgotPasswordTwo> {
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
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    "Verify Your Number",
                    textAlign: TextAlign.center,
                    style: kBodyText,
                    textScaleFactor: 1,
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: const EdgeInsets.all(6),
                  child: Text(
                    "Enter the verification code sent your  registered mobile number",
                    textAlign: TextAlign.center,
                    style: kBodyText,
                    textScaleFactor: 1,
                  ),
                ),
                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 90.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: OtpCodePage(),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: OtpCodePage(),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: OtpCodePage(),
                      ),
                      SizedBox(width: 10),
                      Expanded(
                        flex: 1,
                        child: OtpCodePage(),
                      ),
                    ],
                  ),
                ),
                 Column(
                        children: [
                          SizedBox(height: 40,),
                          Container(
                            decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(16)),
                            child: MaterialButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>ResetPassword(),),);
                              } ,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 6),
                                child: Text('Verify',style: kBodyText,),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: RichText(
                text: TextSpan(
                  text: "Didn't recive any code ? ",
                  style: kSignUpText,
                  children: <TextSpan>[
                    TextSpan(
                        text: "Resend",
                        style: kSignUpText,
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

class OtpCodePage extends StatelessWidget {
  const OtpCodePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: GoogleFonts.roboto(
        fontSize: 18,
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: '1',
        hintStyle: GoogleFonts.roboto(
          fontSize: 18,
          color: Colors.white,
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
            style: BorderStyle.solid,
          ),
        ),
      ),
    );
  }
}
