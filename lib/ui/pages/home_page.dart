import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portofolio_yunus/theme.dart';
import 'package:portofolio_yunus/ui/pages/about_page.dart';
import 'package:portofolio_yunus/ui/pages/education_page.dart';
import 'package:portofolio_yunus/ui/pages/experience_page.dart';
import 'package:portofolio_yunus/ui/widgets/menu_item.dart';
import 'package:portofolio_yunus/model/story.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Random random = Random();
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(20, 20, 20, 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              setState(() {});
                            },
                            child: AnimatedContainer(
                              duration: Duration(seconds: 2),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(width: 2, color: Color.fromRGBO(random.nextInt(255), random.nextInt(255), random.nextInt(200), 0.6)),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('lib/assets/images/yunus_pic.png', width: 70, height: 70, fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Spacer(),
                        Container(color: greyColor.withOpacity(0.2), width: 1, height: 50, margin: EdgeInsets.only(right: 10, left: 20),),
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Role', style: TextStyle(color: greyColor),),
                                SizedBox(height: 5),
                                Text('Mobile App Developer', style: TextStyle(fontWeight: FontWeight.w500),)
                              ],
                            ),
                          )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.fromLTRB(24, 13, 13, 13),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Muhammad', style: titleTextStyle,),
                        Text('Yunus Turmudi', style: titleTextStyle.copyWith(color: greyColor)),
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 13, 30, 13),
                    child: Column(
                      children: [
                        MenuItem(title: 'About', color: Color(0xFF00A3FF), icon: Icons.info, nextScreen: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => AboutPage()));
                        }),
                        SizedBox(height: 25,),
                        MenuItem(title: 'Education', color: Colors.purple, icon: Icons.cast_for_education, nextScreen: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => EducationPage()));
                        }),
                        SizedBox(height: 25,),
                        MenuItem(title: 'Experience', color: Colors.orange, icon: Icons.explore_rounded, nextScreen: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ExperiencePage()));
                        }),
                        // SizedBox(height: 25,),
                        // MenuItem(title: 'Projects', color: Colors.green, icon: Icons.satellite,),
                      ],
                    )
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.only(left: 24, bottom: 13, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Stories', style: titleTextStyle.copyWith(fontSize: 20,)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      itemBuilder: (BuildContext context, int index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(myStories[index].imageUrl, scale: 1, fit: BoxFit.fill),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 10,);
                      },
                      itemCount: myStories.length,
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ),
    );
  }
}