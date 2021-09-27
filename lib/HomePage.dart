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
                height: 200,
               
                decoration: BoxDecoration(
                  gradient:LinearGradient(colors:[
                    customcolors.AppColor.gradientFirst.withOpacity(0.8),
                    customcolors.AppColor.gradientSecond.withOpacity(0.9),
                    
                  ],
                  begin: Alignment.bottomLeft,
                  end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(60),
                    bottomRight: Radius.circular(10),

                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(10, 10),
                      blurRadius: 20,
                      color: customcolors.AppColor.gradientSecond.withOpacity(0.2),
                    ),
                  ],
                ),


              child: Container(
                padding: const EdgeInsets.only(
                  left: 20,
                  top: 15,
                  right: 20,
                  bottom: 5,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>
                  [
                    Text(
                      "Next Workout for You",
                      style: TextStyle(
                      fontSize: 20,
                      color: customcolors.AppColor.homePageContainerTextSmall,
                      fontWeight: FontWeight.w700,

                      ), 
                    ),
                    SizedBox(
                      height: 10,
                      ),
                    Text(
                      "Push Ups",
                      style: TextStyle(
                      fontSize: 25,
                      color: customcolors.AppColor.homePageContainerTextSmall,
                      fontWeight: FontWeight.w700,

                      ), 
                    ),

                    SizedBox(
                      height: 10,
                      ),

                    Text(
                      "Chest Workout",
                      style: TextStyle(
                      fontSize: 25,
                      color: customcolors.AppColor.homePageContainerTextSmall,
                      fontWeight: FontWeight.w700,

                      ), 
                    ),
                    SizedBox(height: 10,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>
                      [
                        Icon(
                          Icons.alarm_add_rounded,
                          size: 20,
                          color: customcolors.AppColor.homePageContainerTextSmall,
                        ),

                        SizedBox(width: 10,),

                      Text(
                      "60 min",
                      style: TextStyle(
                      fontSize: 15,
                      color: customcolors.AppColor.homePageContainerTextSmall,
                      fontWeight: FontWeight.w700,

                      ), 
                      ),
                      Expanded(
                      child: Container(),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                              color: customcolors.AppColor.gradientFirst,
                              blurRadius: 5,
                              offset: Offset(5, 5),
                            ),
                          ],

                        ),
                        child: Icon(
                         Icons.play_circle,
                         size: 60,
                         color: Colors.white,
                    ),
                      ),
                       
                      ],
                    ),

                    

                    
                  ],
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