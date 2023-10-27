
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../export.dart';
class HomeScreenPage extends StatefulWidget {
  const HomeScreenPage({Key? key}) : super(key: key);

  @override
  State<HomeScreenPage> createState() => _HomeScreenPageState();
}

class _HomeScreenPageState extends State<HomeScreenPage> {
  List<StylesData> stylesObject = [
    StylesData("assets/image/disneyImage.png", "disney"),
    StylesData("assets/image/disneyImage.png", "disney"),
    StylesData("assets/image/disneyImage.png", "disney"),
    StylesData("assets/image/disneyImage.png", "disney"),
    StylesData("assets/image/disneyImage.png", "disney"),
  ];



  var Controller=Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize:  Size.fromHeight(50),
          child: CustomAppBar(),
        ),
        body: SingleChildScrollView(
          child: Obx(
            ()=> Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  SuggestionBox(
                    isShown: !Controller.isShown.value,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.textContainerColor.withOpacity(0.9),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.w),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/addImagSvg.svg',
                                width: 48.w,
                                height: 24.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'Add Image',
                                style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.editTextColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.textContainerColor.withOpacity(0.9),
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.w),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              SvgPicture.asset(
                                'assets/svg/addImagSvg.svg',
                                width: 48.w,
                                height: 24.h,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                'Add Image',
                                style: GoogleFonts.poppins(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.editTextColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  SuggestionBox(
                    isShown: false,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Styles',
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.editTextColor),
                      ),
                      Text(
                        'see all',
                        style: GoogleFonts.poppins(
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500,
                            decoration: TextDecoration.underline,
                            decorationColor: AppColors.seeAllTextColor,
                            color: AppColors.seeAllTextColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  StylesList(stylesObject: stylesObject),
                  SizedBox(
                    height: 10.h,
                  ),
                  SvgPicture.asset(
                    'assets/svg/rectangleVedioSvg.svg',
                    //width: 48.w,
                   // height: 24.h,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Inspirations',
                        style: GoogleFonts.poppins(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w600,
                            color: AppColors.editTextColor),
                      ),
                    ],
                  ),

                  Obx(()=>
                  Controller!.gridItems.value.data!.length==0?
                  Text(
                    '${Controller!.onDataError.value}',
                    style: GoogleFonts.poppins(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w500,
                        color: AppColors.editTextColor),
                  ):
                  GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2, // Two items per row
                        childAspectRatio: 0.7
                    ),
                    itemBuilder: (context, index) {
                      return GridItemWidget(gridItem: Controller!.gridItems.value.data![index]);
                    },
                    itemCount: Controller!.gridItems.value.data!.length,
                  ),)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
