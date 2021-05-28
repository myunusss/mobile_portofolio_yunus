import 'package:flutter/material.dart';
import 'package:portofolio_yunus/model/job.dart';
import 'package:portofolio_yunus/theme.dart';

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.orange.withOpacity(0.2),
            width: MediaQuery.of(context).size.width,
            height: 200,
          ),
          // Base Round Container
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            margin: EdgeInsets.only(top: 160),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20)),
              color: Colors.white,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: new AppBar(
              leading: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.black),
                onPressed: () => Navigator.pop(context),
              ),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
            ),
            body: new SingleChildScrollView(
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text("Experience", style: titleTextStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                      SizedBox(height: 10,),
                      Text('Job Experience', style: valueTextStyle, textAlign: TextAlign.center,),
                      SizedBox(height: 40,),
                      // Experience info
                      Text('Job Experience', style: labelTextStyle),
                      SizedBox(height: 10,),
                      ..._getJobList(),
                      SizedBox(height: 10,),
                    ],
                  ),
                )
              ]),
            ),
          ),
        ],
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