import 'package:flutter/material.dart';
import 'colors.dart' as customcolors;




class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customcolors.AppColor.homePageBackground,
      body: Container
      (
        child: Padding(
          padding: const EdgeInsets.only(
            top:70,
            left: 30,
            right: 30,
            
            ),
          child: Column(
            children: <Widget>
            [
              Row(
                children: <Widget>
                [
                  Text(
                    "Training",
                    style: TextStyle(
                      fontSize: 30,
                      color: customcolors.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Expanded(child: Container()),
                  Icon(
                    Icons.arrow_back_ios,
                    size: 20,
                    color: customcolors.AppColor.homePageIcons,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.calendar_today_outlined,
                    size: 20,
                    color: customcolors.AppColor.homePageIcons,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 20,
                    color: customcolors.AppColor.homePageIcons,
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                children: <Widget>
                [
                  Text(
                    "Your Programme",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: customcolors.AppColor.homePageSubtitle,
                    ),
                  ),
                  Expanded(
                    child: Container(),
                    ),

                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 20,
                      color: customcolors.AppColor.homePageDetail
                    ),
                  ),

                  SizedBox(width: 5.0,),
                  Icon(
                    Icons.arrow_forward,
                    size: 20.0,
                    color: customcolors.AppColor.homePageIcons,
                  ),

                ],
              ),
              SizedBox(height: 20,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
               
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(10),

                  ),
                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}