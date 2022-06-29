import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1_algoriza/Component/default-font.dart';
import 'package:task1_algoriza/Component/defaultbutton.dart';

import '../Component/default_divider.dart';
import '../Component/default_formfield.dart';
import '../Component/default_outlinebutton.dart';
import 'Resgister.dart';

class SignIn_Screen extends StatelessWidget {
  const SignIn_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 250,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/images/mega-creator-transformed.jpeg',),
                fit: BoxFit.cover
                ),

                ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DefaultTextFont(
                      title: 'Welcome to Food Delivery',
                    fontweight: FontWeight.w600,
                    titlecolor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DefaultTextFont(
                          title: 'Sign in',
                        fontweight: FontWeight.bold,
                        size: 30,
                      ),
                      Row(
                        children: [
                          TextButton(
                              onPressed: (){},
                              child: Row(
                                children: [
                                  DefaultTextFont(
                                    title: 'Help',
                                    fontweight: FontWeight.w600,
                                    titlecolor: Color(0xff779AB6),
                                  ),
                                  Icon(Icons.help,color: Color(0xff779AB6),size: 20,)


                                ],
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DefaultTextFont(
                          title: 'Phone Number',
                      ),
                      SizedBox(height: 10,),
                      DefaultFormField(
                        title: 'Eg. 812345678',
                        paddingVertical: 10,
                        keyType: TextInputType.number,
                        prefixIcon: CountryCodePicker(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          onChanged: print,
                          showDropDownButton: true,
                          initialSelection: '+81',
                          favorite: ['+81','EG'],
                          showFlagMain: false,
                        ),
                      ),
                      SizedBox(height: 20,),
                      DefaultButton(
                        title: 'Sign in',
                        ontap: (){},
                        circularRadius: 0,
                        height: 50,
                      ),
                      SizedBox(height: 15,),
                      DefaultDivider(
                        title: 'Or',
                      ),
                      SizedBox(height: 15,),
                      DefaultOutlineButton(
                        ontap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset('assets/images/google-logo-9822.png',height: 30,width: 30,),
                            SizedBox(width: 10,),
                            Text('Sign with by google')
                          ],
                        ),

                      ),
                      SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTextFont(
                              title: "Doesn't has any account?",
                            fontweight: FontWeight.w600,
                            titlecolor: Colors.grey[700],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen()));
                              },
                              child: DefaultTextFont(
                                  title: 'Register here',
                                titlecolor: Color(0xff779AB6),
                              ))
                        ],
                      ),
                      SizedBox(height: 20,),
                      DefaultTextFont(
                          title: 'Use the application according to policy rules. Any\n kind of violations will be subject sanction.',
                        titleAlign: TextAlign.center,
                        fontweight: FontWeight.w600,
                        titlecolor: Colors.grey[500],
                        size: 14,
                        height: 2,
                      ),
                      SizedBox(height: 40,),
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),

    );
  }
}
