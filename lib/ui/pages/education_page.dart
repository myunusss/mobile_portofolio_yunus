import 'package:flutter/material.dart';
import 'package:portofolio_yunus/model/education.dart';
import 'package:portofolio_yunus/model/licenses.dart';
import 'package:portofolio_yunus/theme.dart';

class EducationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.purple.withOpacity(0.2),
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
                      Text("Education", style: titleTextStyle.copyWith(fontSize: 22, fontWeight: FontWeight.w500), textAlign: TextAlign.center,),
                      SizedBox(height: 10,),
                      Text('Education, Licenses & Certifications', style: valueTextStyle, textAlign: TextAlign.center,),
                      SizedBox(height: 40,),
                      // Education info
                      Text('Education', style: labelTextStyle),
                      SizedBox(height: 10,),
                      ..._getEducationList(),
                      SizedBox(height: 20,),
                      // Licenses info
                      Text('Licenses & Certifications', style: labelTextStyle),
                      SizedBox(height: 10,),
                      ..._getLicensesList(),
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

  _getEducationList() {
    return myEducation.map((education) =>
      Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(education.schoolName, style: valueTextStyle.copyWith(color: blackColor)),
            Text(education.name, style: valueTextStyle),
            Text(education.duration, style: valueTextStyle),
            SizedBox(height: 10,),
          ],
        ),
      )
    ).toList();
  }

  _getLicensesList() {
    return myLicense.map((education) =>
      Container(
        padding: EdgeInsets.only(left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(education.from, style: valueTextStyle.copyWith(color: blackColor)),
            Text(education.name, style: valueTextStyle),
            Text(education.issued, style: valueTextStyle),
            SizedBox(height: 10,),
          ],
        ),
      )
    ).toList();
  }
}