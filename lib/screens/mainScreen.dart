import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  String? _name;
  // String? _BusinessName;
  String? _phone;
  String? _email;
  String? _password;
  String? _confirmpassword;

  bool show = false;
  bool show1 = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 18.w,
              ),
              child: Text(
                'Register in to get started',
                style: getStyling(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter-Regular',
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 19.w,
              ),
              child: Text(
                'Experience the all new App!',
                style: getStyling(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: 'Inter-Regular',
                    color: Colors.black),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Padding(
              padding: EdgeInsets.only(left: 14.w, right: 14.w, bottom: 10.w),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                key: _formkey,
                child: SingleChildScrollView(
                  child: Column(children: [
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                        labelText: 'Name',
                        labelStyle: getStyling(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 2.h, top: 8.h),
                        prefixIcon: const Icon(
                          Icons.person_outlined,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Name is required';
                        }
                      },
                      onSaved: (value) {
                        _name = value;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                        labelText: 'E-mail ID',
                        labelStyle: getStyling(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 2.h, top: 8.h),
                        prefixIcon: const Icon(
                          Icons.mail_outlined,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        if (!value.contains('@')) {
                          return "A valid email should contain '@'";
                        }
                        if (!RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                        ).hasMatch(value)) {
                          return "Please enter a valid email";
                        }
                      },
                      onSaved: (value) {
                        //Saves the input from user in _email
                        _email = value;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        // border: UnderlineInputBorder(),
                        labelText: 'Phone',
                        labelStyle: getStyling(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 2.h, top: 8.h),
                        prefixIcon: const Icon(
                          Icons.phone,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length != 10) {
                          return 'A valid phone number should be of 10 digits';
                        }
                      },
                      onSaved: (value) {
                        //Saves the input from user in _phone
                        _phone = value;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              show = !show;
                            });
                          },
                          child: (show == true)
                              ? const Icon(
                                  Icons.visibility_off,
                                  size: 18,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  size: 18,
                                ),
                        ),
                        // border: UnderlineInputBorder(),
                        labelText: 'Password',
                        labelStyle: getStyling(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 8.h, top: 8.h),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: (show == true) ? false : true,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length < 8) {
                          return 'Password should have atleast 8 characters';
                        }
                      },
                      onSaved: (value) {
                        //Saves the input from user in _password
                        _password = value;
                      },
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              show1 = !show1;
                            });
                          },
                          child: (show1 == true)
                              ? const Icon(
                                  Icons.visibility_off,
                                  size: 18,
                                )
                              : const Icon(
                                  Icons.visibility,
                                  size: 18,
                                ),
                        ),
                        // border: UnderlineInputBorder(),
                        labelText: 'Confirm Password',
                        labelStyle: getStyling(
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                            fontFamily: 'Inter-Regular',
                            color: Colors.black),
                        contentPadding: EdgeInsets.only(bottom: 8.h, top: 8.h),
                        prefixIcon: const Icon(
                          Icons.lock,
                          size: 25,
                          color: Colors.black,
                        ),
                      ),
                      obscureText: (show == true) ? false : true,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'This field is required';
                        }
                        if (value.length < 8 || value != _password) {
                          return 'Password should have atleast 8 characters';
                        }
                      },
                      onSaved: (value) {
                        //Saves the input from user in _password
                        _confirmpassword = value;
                      },
                    ),
                  ]),
                ),
              ),
            ),
            SizedBox(
              height: 25.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonTheme(
                  height: 50.h,
                  minWidth: 250.w,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14.r)),
                    onPressed: () {},
                    color: Colors.orange[400],
                    elevation: 5,
                    child: Text(
                      'Register',
                      style: getStyling(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'Inter-Regular',
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 35.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account?',
                  style: getStyling(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w300,
                      fontFamily: 'Inter-Regular',
                      color: Colors.black),
                ),
                SizedBox(
                  width: 6.w,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Log In',
                    style: getStyling(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Inter-Regular',
                        color: Colors.black),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

TextStyle getStyling(
    {required double fontSize,
    required FontWeight fontWeight,
    required String fontFamily,
    required Color color}) {
  return TextStyle(
      color: color,
      fontFamily: fontFamily,
      fontSize: fontSize,
      fontWeight: fontWeight);
}
