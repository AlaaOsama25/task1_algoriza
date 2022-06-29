import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task1_algoriza/onboarding/onboarding_model.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Authentication/Resgister.dart';
import '../Authentication/Sign_In.dart';
import '../Component/default-font.dart';
import '../Component/defaultbutton.dart';

class OnboardingScreens extends StatelessWidget {
  List<onBoradingModel> onboardingItems =[
    onBoradingModel(
        Text: 'Get food delivery to your\ndoorstep asap',
        body: 'we have young and professional delivery\n team that will bring your food as soon as\n possible to your doorstep',
        image: 'assets/images/Take Away-amico.png'
    ),
    onBoradingModel(
        Text: 'Buy Any Food from your\nfavorite restaurant',
        body: 'we are constantly adding your favourite\n restaurant throughout the territory and around \nyour area carefully selected',
        image: 'assets/images/Take Away-bro.png'
    ),
    onBoradingModel(
        Text: 'Get exclusive offer from\n your favorite restaurant',
        body: 'we are constantly bringing your favorite food\n from your favorite restaurants with various\n types of offers',
        image: 'assets/images/Combo offer-pana.png'
    )
  ];
  var boardcontroller = PageController();
  bool islast = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 10.0),
            child: DefaultButton(
              title: 'Skip',
              ontap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>SignIn_Screen()));
              },
              textcolor: Colors.black,
              buttoncolor: Colors.grey.shade300,
              circularRadius: 20.0,
              width: 70,

            )
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                itemBuilder: (context, index) => buildBoardingItem(onboardingItems[index]),
              controller: boardcontroller,
              itemCount: onboardingItems.length,
              physics: BouncingScrollPhysics(),
              onPageChanged: (int index) {
                if (index == onboardingItems.length - 1) {
                  islast = true;
                } else {
                  islast = false;
                }
              },

            ),
          ),
          Column(
            children: [
              SmoothPageIndicator(
                controller: boardcontroller,
                count: onboardingItems.length,
                effect: const ExpandingDotsEffect(
                    activeDotColor: Color(0xff779AB6),
                    dotHeight: 10.0,
                    dotWidth: 10.0,
                    //expansionFactor: 4,
                    //spacing: 5
                ),
              ),
              SizedBox(height: 20.0,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: DefaultButton(
                  title: 'Get Started',
                  ontap: (){
                    boardcontroller.nextPage(
                        duration: Duration(milliseconds: 750),
                        curve: Curves.fastLinearToSlowEaseIn);
                    if(islast){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>SignIn_Screen()));
                    }
                  },

                )
              ),
              SizedBox(height: 10.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DefaultTextFont(
                      title: "Don't have an account?",
                    fontweight: FontWeight.w700,
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                      },
                      style: TextButton.styleFrom(
                        primary: Color(0xff779AB6)
                      ),
                      child: Text('Sign Up'))
                ],
              ),
              SizedBox(height: 10.0,),


            ],
          ),

        ],
      ),

    );
  }
}
Widget buildBoardingItem(onBoradingModel model) => Column(
  children: [
    Image(
      image: AssetImage('${model.image}',),
      height: 300,
      width: 300,
    ),
    Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            DefaultTextFont(
              title: model.Text!,
              size: 25,
              fontweight: FontWeight.bold,
              height: 1.4,
              titleAlign: TextAlign.center,
            ),
            SizedBox(height: 15.0,),
            DefaultTextFont(
              title: model.body!,
              size: 15,
              fontweight: FontWeight.w600,
              titlecolor: Colors.grey.shade500,
              height: 1.4,
              titleAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    )
  ],
);