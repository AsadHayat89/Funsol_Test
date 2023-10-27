

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../export.dart';
class MyNavigationBar extends StatefulWidget {
  static List<Widget> _widgetOptions = <Widget>[
    HomeScreenPage(),
    Text("nothung"),
    Text("nothung"),
    Text("nothung"),
    Text("nothung"),

  ];

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
//  var bottomNavBar=Get.put(BottomNavController());
  int _selectedIndex = 0;
//  var Controller = Get.put(MainController());

  void _onItemTapped(int index) {

    setState(() {
      _selectedIndex = index;
    });

    // bottomNavBar.selectedIndex.value = index;
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: MyNavigationBar._widgetOptions.elementAt(this._selectedIndex),
      bottomNavigationBar: Container(
        width: width,
        height: 60,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 5,
              offset:
              Offset(0, 3), // changes position of shadow
            ),
          ],
        ),

        child: Column(
          children: [

            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: BottomNavigationBar(
                elevation: 0,
                backgroundColor: Colors.white,
                selectedItemColor: AppColors.appBackground,
                unselectedItemColor: Colors.black,
                showUnselectedLabels: true,
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label:"Prompt",
                    icon:   SvgPicture.asset(

                      "assets/svg/promptBox.svg",
                      width:28.w,
                      height: 28.h,
                      semanticsLabel: 'Example SVG',
                      //color: AppColors.UnselectedIConColor,

                      color:_selectedIndex==0?AppColors.appBackground:AppColors.UnselectedIConColor,

                    ),
                    // title: Text('Home'),

                    //   backgroundColor: Controller.checkColor==0?AppColors.slectedIconBottom:AppColors.LightVerison
                  ),
                  BottomNavigationBarItem(
                    label: "Image",
                    icon:  SvgPicture.asset(

                      "assets/svg/imageSvg.svg",
                      width:28.w,
                      height: 28.h,
                      semanticsLabel: 'Example SVG',
                      //color: AppColors.UnselectedIConColor,

                      color:_selectedIndex==1?AppColors.appBackground:AppColors.UnselectedIConColor,

                    ),
                    //testing

                    // title: Text('Profile'),
                    //   backgroundColor:AppColors.appBackground
                  ),
                  BottomNavigationBarItem(
                    label:"Saved",
                    icon: SvgPicture.asset(

                      "assets/svg/savedSvg.svg",
                      width:28.w,
                      height: 28.h,
                      semanticsLabel: 'Example SVG',
                      //color: AppColors.UnselectedIConColor,

                      color:_selectedIndex==2?AppColors.appBackground:AppColors.UnselectedIConColor,

                    ),

                    // title: Text('Search'),
                    //   backgroundColor: Controller.checkColor==0?AppColors.slectedIconBottom:AppColors.LightVerison
                  ),
                  BottomNavigationBarItem(
                    label:"Premium",
                    icon: SvgPicture.asset(

                      "assets/svg/premiumSvg.svg",
                      width:28.w,
                      height: 28.h,
                      semanticsLabel: 'Example SVG',
                      //color: AppColors.UnselectedIConColor,

                      color:_selectedIndex==3?AppColors.appBackground:AppColors.UnselectedIConColor,

                    ),

                    // title: Text('Search'),
                    //   backgroundColor: Controller.checkColor==0?AppColors.slectedIconBottom:AppColors.LightVerison
                  ),

                  BottomNavigationBarItem(
                    label:"Seeting",
                    icon: SvgPicture.asset(

                      "assets/svg/settingSvg.svg",
                      width:28.w,
                      height: 28.h,
                      semanticsLabel: 'Example SVG',
                      //color: AppColors.UnselectedIConColor,

                      color:_selectedIndex==4?AppColors.appBackground:AppColors.UnselectedIConColor,

                    ),

                    // title: Text('Search'),
                    //   backgroundColor: Controller.checkColor==0?AppColors.slectedIconBottom:AppColors.LightVerison
                  ),
                ],
                type: BottomNavigationBarType.fixed,
                currentIndex: this._selectedIndex,
                iconSize: 25,
                onTap: _onItemTapped,
              ),
            ),
          ],
        ),
      ),
    );
  }
}