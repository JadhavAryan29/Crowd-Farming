import 'package:flutter/material.dart';
import 'package:login/screens/bottomNav/bottom_bar.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  bool _loading = false;
  final _formKey = GlobalKey<FormState>();
  static TextEditingController name = TextEditingController();
  String get getName => name.text;
  static TextEditingController surname = TextEditingController();
  String get getSurname => surname.text;
  static TextEditingController dob = TextEditingController();
  String get getDOB => dob.text;
  static TextEditingController email = TextEditingController();
  String get getEmail => email.text;
  static TextEditingController password = TextEditingController();
  String get getPassword => password.text;
  static TextEditingController reEnterPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: _loading
              ? Center(
                  child: CircularProgressIndicator(
                    color: Colors.white,
                  ),
                )
              : SafeArea(
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
                      SizedBox(
                        height: 10,
                      ),
                      SingleChildScrollView(
                        child: Container(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              children: [
                                Form(
                                  key: _formKey,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      TextInput(
                                        icon: (Icons.person),
                                        hint: 'Name',
                                        inputType: TextInputType.name,
                                        inputAction: TextInputAction.next,
                                        controller: name,
                                      ),
                                      TextInput(
                                        icon: (Icons.person),
                                        hint: 'Surname',
                                        inputType: TextInputType.name,
                                        inputAction: TextInputAction.next,
                                        controller: surname,
                                      ),
                                      TextInput(
                                        icon: (Icons.calendar_today),
                                        hint: 'Date Of Birth',
                                        inputType: TextInputType.number,
                                        inputAction: TextInputAction.next,
                                        controller: dob,
                                      ),
                                      TextInput(
                                        icon: (Icons.email),
                                        hint: 'Email Id (optional)',
                                        inputType: TextInputType.emailAddress,
                                        inputAction: TextInputAction.next,
                                        controller: email,
                                      ),
                                      PasswordInput(
                                        icon: (Icons.lock),
                                        hint: 'Password',
                                        inputAction: TextInputAction.next,
                                        controller: password,
                                      ),
                                      ResetPasswordInput(
                                        icon: (Icons.lock),
                                        hint: 'Confirm Password',
                                        inputAction: TextInputAction.done,
                                        controller: reEnterPassword,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(16)),
                            child: MaterialButton(
                              onPressed: () async {
                                if (_formKey.currentState!.validate()) {
                                  setState(() {
                                    _loading = true;
                                  });
                                  await Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (_) => BottomBar()));
                                  setState(() {
                                    _loading = false;
                                  });
                                }
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Text(
                                  'Register',
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

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
    required this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          validator: (value) {
            String pattern =
                r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
            RegExp regExp = new RegExp(pattern);
            return regExp.hasMatch(value!)
                ? null
                : "Does not meet password requirement";
          },
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

class ResetPasswordInput extends StatelessWidget {
  const ResetPasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
    required this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    TextEditingController password = TextEditingController();
    TextEditingController reEnterPassword = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[300]!.withOpacity(0.5),
          borderRadius: BorderRadius.circular(16),
        ),
        child: TextFormField(
          validator: (value) {
            if (password.text == reEnterPassword.text)
              return null;
            else
              return 'Password does not match';
          },
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
