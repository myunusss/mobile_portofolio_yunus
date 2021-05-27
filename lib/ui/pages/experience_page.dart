import 'package:flutter/material.dart';
import 'package:portofolio_yunus/model/job.dart';
import 'package:portofolio_yunus/theme.dart';

class ExperiencePage extends StatelessWidget {
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
                  color: Colors.orange.withOpacity(0.2),
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
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 13),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              SizedBox(height: 10,),
                              Text("Experience", style: titleTextStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                              SizedBox(height: 10,),
                              Text('Job Experience', style: valueTextStyle, textAlign: TextAlign.center,),
                              SizedBox(height: 60,),
                              // Experience info
                              Text('Job Experience', style: labelTextStyle),
                              SizedBox(height: 10,),
                              ..._getJobList(),
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

  _getJobList() {
    return myJob.map((education) =>
      Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(education.companyName, style: valueTextStyle.copyWith(color: blackColor)),
            Text(education.role, style: valueTextStyle),
            Text(education.duration, style: valueTextStyle),
            SizedBox(height: 10,),
          ],
        ),
      )
    ).toList();
  }
}