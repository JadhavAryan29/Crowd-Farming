import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login/screens/signUp/change_phone_number_page.dart';
import 'package:login/screens/signUp/details_page.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';
import 'package:pinput/pin_put/pin_put.dart';

class VerifyPage extends StatefulWidget {
  final String phone;
  const VerifyPage(this.phone);

  @override
  _VerifyPageState createState() => _VerifyPageState();
}

class _VerifyPageState extends State<VerifyPage> {
  late String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
      color: Colors.grey[100]!.withOpacity(0.5),
      borderRadius: BorderRadius.circular(10.0),
      border: Border.all(color: Colors.teal));
  @override
  void initState() {
    super.initState();
    _verifyPhone();
  }

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
                  padding: const EdgeInsets.all(20.0),
                  child: PinPut(
                      fieldsCount: 6,
                      textStyle: kDrawer,
                      eachFieldWidth: 40.0,
                      eachFieldHeight: 55.0,
                      focusNode: _pinPutFocusNode,
                      controller: _pinPutController,
                      submittedFieldDecoration: pinPutDecoration,
                      selectedFieldDecoration: pinPutDecoration,
                      followingFieldDecoration: pinPutDecoration,
                      pinAnimationType: PinAnimationType.fade,
                      onSubmit: (pin) async {
                          await FirebaseAuth.instance
                              .signInWithCredential(
                                  PhoneAuthProvider.credential(
                                      verificationId: _verificationCode,
                                      smsCode: pin))
                              .then((value) async {
                            if (value.user != null) {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DetailsPage()),
                                  (route) => false);
                            }
                          });
                        } ),
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
                      child: MaterialButton(
                        onPressed: () {
                        },
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6),
                          child: Text(
                            'Verify',
                            style: kBodyText,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
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
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeNumberPage(),
                      ),
                    );
                  },
                  child: InkWell(
                    child: Text(
                      "Change Phone Number ?",
                      style: kSignUpText,
                      textScaleFactor: 1,
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

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+91${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
            if (value.user != null) {
              print('user logged in');
            }
          });
        },
        verificationFailed: (FirebaseException e) {
          print(e.message);
        },
        codeSent: (var verifiactionId, var resendToken) {
          setState(() {
            _verificationCode = verifiactionId;
          });
        },
        codeAutoRetrievalTimeout: (var verificationId) {
            _verificationCode = verificationId;
        },
        timeout: Duration(seconds: 60));
  }
}
