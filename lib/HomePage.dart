import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'colors.dart' as customcolors;




class Homepage extends StatefulWidget {
  const Homepage({ Key? key }) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  
  List info=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/info.json").then((value) {
     info =json.decode(value);
    });
  }
  
  @override
  void initState(){
    super.initState();
    _initData();
  }
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
              SizedBox(height: 10,),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 180,
                

                child: Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(top: 30,),
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/card.jpg",
                          ),
                          fit: BoxFit.fill,
                          ),

                          boxShadow: [
                            BoxShadow(
                              blurRadius: 40,
                              offset: Offset(8, 10),
                              color: customcolors.AppColor.gradientSecond.withOpacity(0.8),
                            ),

                            BoxShadow(
                              blurRadius: 40,
                              offset: Offset(-1, -5),
                              color: customcolors.AppColor.gradientSecond.withOpacity(0.8),
                            ),

                            
                          ],
                      ),
                    ),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                      right: 200,
                      bottom: 25,
                      ),
                      decoration: BoxDecoration(
                        
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/figure.png",
                          ),
                          //fit: BoxFit.fill,
                          ),

                      ),
                    

                    ),
                    Container(
                      width: double.maxFinite,
                      height: 100,
                      //color: Colors.redAccent.withOpacity(0.2),
                      margin: const EdgeInsets.only(
                        left: 150,
                        top: 30,
                        ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          
                          children: <Widget>
                          [
                            Text(
                              "Your Progress is excellent",
                              style: TextStyle(
                                color: customcolors.AppColor.homePageDetail,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                
                              ),
                              ),
                            SizedBox(height: 10,),
                            RichText(
                              text: TextSpan(
                              text: "Keep it going \n",
                              style: TextStyle(
                                color: customcolors.AppColor.homePagePlanColor,
                                fontSize: 16,

                              ),
                              children: [
                                TextSpan(
                              text: "Believe Your Self",
                                ),
                              ],
                            ),
                            ),
                          
                          ],
                        ),
                      ),
                    ),                  
                  ],
                ),
              ),
              Row(
                children: <Widget>
                [
                  Text(
                    "Area of focus",
                    style:TextStyle(
                      fontSize:25,
                      fontWeight: FontWeight.bold,
                      color: customcolors.AppColor.homePageTitle,
                    )
                  ),
                ],
              ),

              Expanded(
              
              child: OverflowBox(
                maxWidth: MediaQuery.of(context).size.width,
                child: ListView.builder
                ( itemCount: (info.length.toDouble()/2).toInt() ,
                  itemBuilder: (_,i)
                  { 
                    int a = 2*i;
                    int b = 2*i +1;
              
                    return Row(
                      children: <Widget>[
                        Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width-60)/2,
                          margin: EdgeInsets.only(left: 20,bottom: 15),
                          padding: EdgeInsets.only(bottom: 5),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                info[a]['img'],
                              ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: customcolors.AppColor.gradientSecond.withOpacity(0.1),
                                ),
              
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: customcolors.AppColor.gradientSecond.withOpacity(0.1),
                                ),
                              ],
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[a]['title'],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: customcolors.AppColor.homePageDetail,
                                ),
                              ),
                            ),
                          ),
                        ),
              
              
                         Container(
                          height: 170,
                          width: (MediaQuery.of(context).size.width-60)/2,
                          padding: EdgeInsets.only(bottom: 5),
                          margin: EdgeInsets.only(left: 20,bottom: 15),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(
                              image: AssetImage(
                                info[b]['img'],
                              ),
                              ),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(5, 5),
                                  color: customcolors.AppColor.gradientSecond.withOpacity(0.1),
                                ),
              
                                BoxShadow(
                                  blurRadius: 3,
                                  offset: Offset(-5, -5),
                                  color: customcolors.AppColor.gradientSecond.withOpacity(0.1),
                                ),
                              ],
                          ),
                          child: Center(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                info[b]['title'],
                                style: TextStyle(
                                  fontSize: 20,
                                  color: customcolors.AppColor.homePageDetail,
                                ),
                              ),
                            ),
                          ),
                        ),
              
              
                      ],
                    );
                    },
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