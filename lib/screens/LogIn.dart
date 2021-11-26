import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String? _email;
  String? _password;

  bool show = false;

  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Stack(children: [
      Positioned(
        right: 7.w,
        left: 7.w,
        bottom: 20.h,
        child: ButtonTheme(
          height: 50.h,
          minWidth: 320.w,
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
      ),
      Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: 10.h,
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 18.w,
          ),
          child: Text(
            'Log in to get started',
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
                child: Column(
                  children: [
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
                      height: 20.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Use Mobile Number',
                              style: getStyling(
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: 'Inter-Regular',
                                  color: Colors.orange.shade400),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ))
      ]),
    ])));
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
}
