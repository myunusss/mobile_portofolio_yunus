import 'package:flutter/material.dart';
import 'package:portofolio_yunus/theme.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Color(0xFF00A3FF).withOpacity(0.2),
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
                Container(
                  margin: EdgeInsets.only(top: 20),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset('lib/assets/images/yunus_pic.png',
                          width: 120, height: 120, fit: BoxFit.fill),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        "Muhammad Yunus\nTurmudi",
                        style: titleTextStyle.copyWith(
                            fontSize: 22, fontWeight: FontWeight.w500),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Mobile App Developer',
                        style: valueTextStyle,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      // Contact Me
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 95,
                            child: Column(children: [
                              InkWell(
                                onTap: () => _launchWhatsApp(context),
                                child: Icon(Icons.message)
                              ),
                            ]),
                          ),
                          Container(
                            width: 95,
                            child: Column(children: [
                              InkWell(
                                onTap: () => _launchTel(context),
                                child: Icon(Icons.call),
                              ),
                            ]),
                          ),
                          Container(
                            width: 95,
                            child: Column(children: [
                              InkWell(
                                onTap: () => _launchEmail(context),
                                child: Icon(Icons.email)
                              ),
                            ]),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      // Additional info
                      Text('About', style: labelTextStyle),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Text(
                          'Experienced Mobile Engineer with a demonstrated history of working in the information technology and services industry.',
                          style: valueTextStyle
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Location', style: labelTextStyle),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Text(
                          'Bandung, West Java, Indonesia',
                          style: valueTextStyle
                        ),
                      ),
                      SizedBox(height: 10),
                      Text('Email', style: labelTextStyle),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Text('turmudi.yunus@gmail.com', style: valueTextStyle),
                      ),
                      SizedBox(height: 10),
                      Text('Phone', style: labelTextStyle),
                      SizedBox(height: 10),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 13),
                        child: Text('0858 7132 xxxx', style: valueTextStyle),
                      ),
                      SizedBox(height: 10),
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

  void _launchWhatsApp(context) async => await canLaunch('whatsapp://send?phone=6285871321037') ?
    await launch('whatsapp://send?phone=085871321037') :
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Cannot open WhatsApp")));

  void _launchTel(context) async => await canLaunch('tel:6285871321037') ?
    await launch('tel:6285871321037') :
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Cannot open Phone Call")));

  void _launchEmail(context) async => await canLaunch('mailto:yunus8889@gmail.com') ?
    await launch('mailto:yunus8889@gmail.com') :
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Cannot open Email")));
}
