import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'colors.dart' as customcolors;

class VedioInfo extends StatefulWidget {
  const VedioInfo({ Key? key }) : super(key: key);

  @override
  _VedioInfoState createState() => _VedioInfoState();
}

class _VedioInfoState extends State<VedioInfo> {
 List Vedioinfo=[];
  _initData(){
    DefaultAssetBundle.of(context).loadString("json/vedio.json").then((value) {
     Vedioinfo =json.decode(value);
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
      body: Container(
        decoration: BoxDecoration(
          gradient:LinearGradient(
            colors: [
              customcolors.AppColor.gradientFirst.withOpacity(0.9),
              customcolors.AppColor.gradientSecond,
              
            ],
            begin: const FractionalOffset(0.0, 0.4),
            end: Alignment.topRight,

          ),
        ),

        child: Column(
          
          children: <Widget>
          [
            Container(
              padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>
                [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Get.back();
                      },
                      child: Icon(
                        Icons.arrow_back_ios_new_sharp,
                        color: Colors.white,
                        size: 20,
                        ),
                    ),

                      Expanded(child: Container()),

                      Icon(
                      Icons.info_outline,
                      color: Colors.white,
                      size: 20,
                      ),

                  ],
                ),
                  SizedBox(height: 30,),
                  Text(
                    "Legs Toning",
                    style: TextStyle(
                      fontSize: 25,
                      color: customcolors.AppColor.secondPageTitleColor
                    ),
                    ),
                  SizedBox(height: 10,),
                  Text(
                    "and Bicep ",
                    style: TextStyle(
                      fontSize: 25,
                      color: customcolors.AppColor.secondPageTitleColor,
                    ),
                    ),
                  SizedBox(height: 50,),
                  Row(
                    
                    children: <Widget>
                    [
                      Container(
                        width: 90,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              customcolors.AppColor.secondPageContainerGradient1stColor,
                              customcolors.AppColor.secondPageContainerGradient2ndColor,
                            ],

                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>
                          [
                            Icon(
                            Icons.timer,
                            size: 20,
                            color: customcolors.AppColor.secondPageIconColor,
                            ),
                            SizedBox(width: 10,),

                            Text(
                              "64 min",
                              style: TextStyle(
                                fontSize: 16,
                                color: customcolors.AppColor.secondPageIconColor,
                              ),

                            )

                          ],
                        ),
                      ),
                      
                      SizedBox(width: 20,),

                      Container(
                        width: 200,
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                            colors: [
                              customcolors.AppColor.secondPageContainerGradient1stColor,
                              customcolors.AppColor.secondPageContainerGradient2ndColor,
                            ],

                            begin: Alignment.bottomLeft,
                            end: Alignment.topRight,
                          )
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>
                          [
                            Icon(
                            Icons.handyman_outlined,
                            size: 20,
                            color: customcolors.AppColor.secondPageIconColor,
                            ),
                            SizedBox(width: 10,),

                            Text(
                              "Mirigama,Gampaha,Srilanka",
                              style: TextStyle(
                                fontSize: 12,
                                color: customcolors.AppColor.secondPageIconColor,
                              ),

                            )

                          ],
                        ),
                      ),
                    ],
                  ),
                  
                ], 
              ),
            ),
            Expanded(
              child: Container(
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(70),
                    ),
                ),
               child: Column(
                 children: <Widget>
                 [ 
                   SizedBox(height: 10,),
                   Row(
                     
                     children: <Widget>
                     [ 
                       SizedBox(width: 20,),
                       Text(
                         "Excersise Set 01",
                         style: TextStyle(
                           color: customcolors.AppColor.circuitsColor,
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                         ),

                         ),
                       SizedBox(width: 50,),
                       Row(
                         children: <Widget>
                         [
                         Icon(
                           Icons.loop,
                           size: 20,
                           color: customcolors.AppColor.loopColor,
                         ),
                         SizedBox(width: 10,),

                         Text(
                         "3 sets X 3",
                         style: TextStyle(
                           color: customcolors.AppColor.setsColor,
                           fontSize: 15,
                         ),

                         ),
                         ],
                       )
                
                     ],
                   ),
                 ],
               ),

              ),
            )
          ],
        ),

      ),
    );
  }
}