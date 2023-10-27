import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funsole_test/Model/grid_item.dart';
import 'package:funsole_test/constants/apis_constants.dart';
import 'package:funsole_test/constants/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

class GridItemWidget extends StatelessWidget {
  final GridValue gridItem;

  GridItemWidget({required this.gridItem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                child: CachedNetworkImage(
                  width: 150,
                  height: 170,
                  fit: BoxFit.cover,
                  imageUrl: ApiConstants.imageUrl(gridItem.icon!),
                  placeholder: (context, url) => SizedBox(
                    child: Center(
                        child: CircularProgressIndicator(
                      color: Colors.grey,
                      backgroundColor: Colors.white54,
                    )),
                    height: 20.0,
                    width: 20.0,
                  ),
                  errorWidget: (context, url, error) => Icon(Icons.error),
                ),
              )),
          SizedBox(height: 8),
          Text(
            gridItem.name!,
            style: GoogleFonts.poppins(
                fontSize: 18.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.editTextColor),
          ),
        ],
      ),
    );
  }
}
