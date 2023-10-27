import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:funsole_test/constants/app_colors.dart';
import 'package:funsole_test/widgets/gradients_text.dart';
import 'package:google_fonts/google_fonts.dart';
class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GradientText(
        'Cognise',
        style: GoogleFonts.audiowide(fontSize: 22.sp),
        gradient: LinearGradient(colors: [
          AppColors.gradientColor1,
          AppColors.gradientColor2,
        ]),
      ),

      actions: <Widget>[
        SvgPicture.asset('assets/svg/proSvg.svg',width: 48.w,height: 24.h,),
        SizedBox(width: 16.w,),
      ],
    );
  }
}
