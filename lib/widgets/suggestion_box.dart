import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funsole_test/constants/app_colors.dart';
import 'package:funsole_test/widgets/textField.dart';
import 'package:google_fonts/google_fonts.dart';
class SuggestionBox extends StatelessWidget {
  bool isShown;
   SuggestionBox({Key? key,required this.isShown
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color:AppColors.textContainerColor.withOpacity(0.9),
          borderRadius: BorderRadius.all(Radius.circular(10))
      ),
      child: Padding(
        padding:EdgeInsets.symmetric(vertical: 6.w,horizontal: 6.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Flexible(
                  child: Container(
                      child: TextFieldCustom()),
                ),
                SvgPicture.asset('assets/svg/cancelSvg.svg',width: 48.w,height: 24.h,),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('0 / 150',style: GoogleFonts.poppins(fontSize: 12.sp,fontWeight: FontWeight.w300, color: AppColors.editTextColor),),
                Row(
                  children: [
                    if(isShown)
                    SvgPicture.asset('assets/svg/bolbSvg.svg',width: 48.w,height: 30.h,),
                    SizedBox(width: 10.w,),
                    SvgPicture.asset('assets/svg/micSvg.svg',width: 48.w,height: 30.h,),
                  ],
                )
              ],
            ),
            SizedBox(height: 5.h,),
          ],
        ),
      ),
    );
  }
}
