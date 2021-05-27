import 'package:flutter/material.dart';
import 'package:portofolio_yunus/theme.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                Container(
                  color: Color(0xFF00A3FF).withOpacity(0.2),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  margin: EdgeInsets.only(top: 160),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
                    color: Colors.white,
                  ),
                ),
                SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.fromLTRB(5, 2, 5, 2),
                              child: InkWell(
                                child: Icon(Icons.arrow_back, size: 24,),
                                onTap: () { Navigator.pop(context); },
                              ),
                            )
                          ],
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 40),
                          child: Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(25),
                              child: Image.asset('lib/assets/images/yunus_pic.png', width: 120, height: 120, fit: BoxFit.fill),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 10,),
                              Text("Muhammad Yunus\nTurmudi", style: titleTextStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Text('Mobile App Developer', style: valueTextStyle, textAlign: TextAlign.center,),
                              SizedBox(height: 30,),
                              // Additional info
                              Text('About', style: labelTextStyle),
                              SizedBox(height: 10,),
                              Text('Experienced Mobile Engineer with a demonstrated history of working in the information technology and services industry.', style: valueTextStyle),
                              SizedBox(height: 10,),
                              Text('Location', style: labelTextStyle),
                              SizedBox(height: 10,),
                              Text('Bandung, West Java, Indonesia', style: valueTextStyle),
                              SizedBox(height: 10,),
                              Text('Email', style: labelTextStyle),
                              SizedBox(height: 10,),
                              Text('turmudi.yunus@gmail.com', style: valueTextStyle),
                              SizedBox(height: 10,),
                              Text('Phone', style: labelTextStyle),
                              SizedBox(height: 10,),
                              Text('0858 7132 xxxx', style: valueTextStyle),
                            ],
                          ),
                        )
                      ]
                    ),
                  )
                ),
              ]
            ),
          ],
        ),
      ),
    );
  }
}