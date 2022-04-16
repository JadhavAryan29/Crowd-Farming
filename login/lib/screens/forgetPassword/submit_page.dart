import 'package:flutter/material.dart';
import 'package:login/screens/login/login_page.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class SubmitPage extends StatefulWidget {
  const SubmitPage({Key? key}) : super(key: key);

  @override
  _SubmitPageState createState() => _SubmitPageState();
}

class _SubmitPageState extends State<SubmitPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(78.0),
                  child: AnimateImage(),
                ),
                Container(
                  height: 60,
                  child: Center(
                    child: Text(
                      'Password Reset Successful',
                      style: kCoHeading,
                    ),
                  ),
                ),
                 Column(
                        children: [
                          SizedBox(height: 30,),
                          Container(
                            decoration: BoxDecoration(color: Colors.teal,borderRadius: BorderRadius.circular(16)),
                            child: MaterialButton(
                              onPressed:(){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage(),),);
                              } ,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 16),
                                child: Text('SignIn',style: kBodyText,),
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

class AnimateImage extends StatefulWidget {
  const AnimateImage({Key? key}) : super(key: key);

  @override
  _AnimateImageState createState() => _AnimateImageState();
}

class _AnimateImageState extends State<AnimateImage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(seconds: 3),
  )..repeat(reverse: true);
  late Animation<Offset> _animation = Tween(
    begin: Offset.zero,
    end: Offset(0, 0.08),
  ).animate(_controller);

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  Widget build(BuildContext context) {
    return SlideTransition(
      position: _animation,
      child: Image.asset('assets/check.png'),
    );
  }
}
