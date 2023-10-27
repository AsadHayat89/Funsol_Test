import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funsole_test/constants/app_colors.dart';
import 'package:funsole_test/widgets/text_widget.dart';
import 'package:google_fonts/google_fonts.dart';
class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.multiline,
      maxLines: null,
      style: GoogleFonts.poppins(fontSize: 15.sp,color: AppColors.editTextColor),
      decoration: InputDecoration.collapsed(
        filled: true,
        fillColor: Colors.transparent, // Set the alpha value for transparency
        hintText: 'Enter Your Text here ..' ,
        hintStyle: GoogleFonts.poppins(fontSize: 15.sp,color: AppColors.editTextColor),

      ),
    );;
  }
}
