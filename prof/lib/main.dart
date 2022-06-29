import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'vazir'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _getappbar(),
        body: SafeArea(
          child: _getmainbody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _getappbar() {
    return AppBar(
      backgroundColor: Colors.blue,
      title: Text('علیرضا دانشور'),
      elevation: 0,
      centerTitle: true,
    );
  }

  Widget _getmainbody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
          ),
          _getheader(),
          SizedBox(height: 20.0),
          _getsocial(),
          SizedBox(
            height: 20.0,
          ),
          //_getcardskills(),
          _getcardskill1(),
          //_getresume(),
          _gettest(),
        ],
      ),
    );
  }

  Widget _gettest() {
    var list = [
      'سابقه کار در خبرگذاری تبریزمن',
      'سابقه کار با فوتوشاپ',
      'ادمین اینستاگرام',
      'سابقه کار با وردپرس'
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
        color: Colors.grey[200],
        child: Column(
          children: [
            SizedBox(width: double.infinity),
            Text(
              'سابقه کاری من',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            for (var skill in list)
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(width: double.infinity),
                  Text(
                    '$skill',
                    textDirection: TextDirection.rtl,
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }

  Widget _getcardskill1() {
    var list = ['android', 'dart', 'flutter'];
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      alignment: WrapAlignment.center,
      children: [
        for (var skill in list)
          Card(
              elevation: 20.0,
              shadowColor: Colors.blue,
              child: Column(
                children: [
                  Container(
                      width: 80.0,
                      height: 80.0,
                      child: Image(image: AssetImage('images/$skill.png'))),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('$skill'),
                  ),
                ],
              )),
      ],
    );
  }

  Widget _getheader() {
    return Column(
      children: [
        SizedBox(height: 20.0),
        CircleAvatar(
          backgroundImage: AssetImage('images/user.png'),
          radius: 70,
        ),
        SizedBox(height: 15.0),
        Text(
          'من علیرضا دانشور سپهری هستم یک برنامه نویس',
          style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 15.0),
        Text(
          'عاشق برنامه نویسی موبایل و فلاتر هستم',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _getsocial() {
    return Wrap(
      alignment: WrapAlignment.center,
      children: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.linkedin),
          color: Color.fromARGB(255, 4, 63, 112),
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.instagramSquare),
          color: Colors.pink,
        ),
        IconButton(
          onPressed: () {},
          icon: FaIcon(FontAwesomeIcons.telegram),
          color: Colors.blue,
        ),
        IconButton(
            onPressed: () {}, icon: FaIcon(FontAwesomeIcons.githubSquare)),
      ],
    );
  }
}
