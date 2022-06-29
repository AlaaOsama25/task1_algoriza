import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Component/default-font.dart';
import '../Component/default_divider.dart';
import '../Component/default_formfield.dart';
import '../Component/default_outlinebutton.dart';
import '../Component/defaultbutton.dart';
import 'Sign_In.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Material(
              child: Container(
                width: double.infinity,
                height: 100,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/mega-creator-transformed.jpeg',),
                      fit: BoxFit.cover
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0,left: 15),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: (){
                          Navigator.pop(context);

                        },
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black
                          ),
                          child: IconButton(
                            icon: Icon(Icons.arrow_back_ios_rounded,size: 20,color: Colors.white,),
                            onPressed: (){
                              Navigator.pop(context);

                            },
                          ),
                        ),
                      ),
                    ],
                  ),
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
                        title: 'Register',
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
                        title: 'Email',
                      ),
                      SizedBox(height: 10,),
                      DefaultFormField(
                        title: 'Eg. example@email.com',
                        paddingHorizontal: 20,
                        keyType: TextInputType.emailAddress,
                      ),
                      SizedBox(height: 20,),
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
                      DefaultTextFont(
                        title: 'Password',
                      ),
                      SizedBox(height: 10,),
                      DefaultFormField(
                        title: 'password',
                        paddingHorizontal: 20,
                        keyType: TextInputType.text,
                        isPassword: true,
                        SuffixIcon: Icon(Icons.remove_red_eye),
                      ),
                      SizedBox(height: 20,),
                      DefaultButton(
                        title: 'Register',
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
                            title: "Has any account?",
                            fontweight: FontWeight.w600,
                            titlecolor: Colors.grey[700],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) =>SignIn_Screen()));                              },
                              child: DefaultTextFont(
                                title: 'Sign in here',
                                titlecolor: Color(0xff779AB6),
                              ))
                        ],
                      ),
                      SizedBox(height: 20,),
                      DefaultTextFont(
                        title: 'By registering your account. you are agree to our ',
                        titleAlign: TextAlign.center,
                        fontweight: FontWeight.w600,
                        titlecolor: Colors.grey[500],
                        size: 14,
                        height: 2,
                      ),
                      TextButton(onPressed: (){}, child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DefaultTextFont(
                            title: 'terms and condition',
                            titleAlign: TextAlign.center,
                            titlecolor:Color(0xff779AB6) ,
                          ),
                        ],
                      ) ),
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
