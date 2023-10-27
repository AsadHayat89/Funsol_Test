import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:funsole_test/Model/stylessObject.dart';
import 'package:google_fonts/google_fonts.dart';
class StylesList extends StatelessWidget {
  List<StylesData> stylesObject;
   StylesList({Key? key,required this.stylesObject}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        height: 110, // Set the height as needed
        child: ListView.builder(
          padding: EdgeInsets.zero,
          scrollDirection: Axis.horizontal,
          // Set the scroll direction to horizontal
          itemCount: stylesObject.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: Container(
                width: 110, // Set the width as needed
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  image: DecorationImage(
                    image: AssetImage(stylesObject[index].imageUrl!), // Provide the image path
                    fit: BoxFit.cover, // You can choose different BoxFit values
                  ),
                ),// Set the height as needed
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text(
                    stylesObject[index].text!,
                    style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
