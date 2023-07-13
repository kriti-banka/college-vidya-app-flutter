import 'package:collegevidya/Screens/Signin-Signup/Signin.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';


class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Compare",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),

                      SizedBox(height: 30,),
                      Image.asset('assets/image/compare.png', width: 400),

                      SizedBox(height: 30),
                      Text(
                        "The more you compare, The better you choose",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 20,right: 20),
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Community",
                        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                      ),

                      SizedBox(height: 30,),
                      Image.asset('assets/image/Community.png', width: 400),

                      SizedBox(height: 30),
                      Text(
                        "Connect with other Learners, share your thoughts and find inspiration.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  // color: Colors.white,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Counselling",
                        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      ),

                      Image.asset(
                        'assets/image/Counselling.png',
                        width: 300,
                      ),

                      SizedBox(height: 30),
                      Text(
                        "Talk to experts , know better about universities and choose the right one",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 100),
                      Container(
                        // color: Colors.pinkAccent,
                        width: 200,
                        height: 60,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue[900],
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30))),
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> signin()));
                          },
                          child: Text(
                            "Get Started",
                            style: TextStyle(fontSize: 18),
                          ),
                        ),
                      ),
                      // SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: Container(
                alignment: Alignment(0, 0.75),
                child: SmoothPageIndicator(
                  controller: _controller,
                  count: 3,
                  axisDirection: Axis.horizontal,
                  effect: WormEffect(
                    radius: 5.0,
                    dotColor: Colors.grey,
                    activeDotColor: Colors.indigo,
                    dotWidth: 9.0,
                    dotHeight: 10.0,
                  ),
                ),
              ),
            ),
          ],
        )
    );
  }
}