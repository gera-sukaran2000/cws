import 'package:card_swiper/card_swiper.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 500.h,
              width: double.infinity,
              child: Carousel(
                images: [
                  Image.asset('assets/images/glasses.png'),
                  Image.asset('assets/images/glasses.png'),
                  Image.asset('assets/images/glasses.png'),
                ],
                dotColor: Colors.grey.shade400,
                autoplay: false,
                dotBgColor: Colors.transparent,
                dotSize: 5.0,
                dotIncreasedColor: Colors.grey.shade700,
                noRadiusForIndicator: true,
                dotSpacing: 15.w,
              )),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'Eyevy',
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter-Regular',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Text(
              'Full Rim Round,Cat-eyed Anti Flare Frame(48 mm)',
              maxLines: 2,
              overflow: TextOverflow.visible,
              style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Inter-Regular',
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 15.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Row(
              children: [
                Text(
                  '\$219',
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter-Bold',
                    fontSize: 17.sp,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  '\$999',
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Inter-Medium',
                    fontSize: 15.sp,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(width: 10.w),
                Text(
                  '78% off',
                  overflow: TextOverflow.visible,
                  style: TextStyle(
                      color: Colors.green,
                      fontFamily: 'Inter-Regular',
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w300),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              Expanded(
                child: ButtonTheme(
                  height: 50.h,
                  child: RaisedButton(
                    elevation: 5,
                    color: Colors.white,
                    onPressed: () {},
                    child: Text(
                      "ADD TO CART",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'Inter-Regular',
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: ButtonTheme(
                  height: 50.h,
                  child: RaisedButton(
                    elevation: 5,
                    child: Text(
                      "BUY NOW",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Inter-Regular',
                        fontSize: 16.sp,
                      ),
                    ),
                    color: Colors.orange.shade400,
                    onPressed: () {},
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
