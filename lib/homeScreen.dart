import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final tab = [
      HomeDash(context),
      HomeDash(context),
      HomeDash(context),
      HomeDash(context),
      HomeDash(context),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: tab[currentIndex],
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.white10, spreadRadius: 0, blurRadius: 2),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            child: BottomNavigationBar(
              backgroundColor: Colors.white,
              type: BottomNavigationBarType.fixed,
              showUnselectedLabels: false,
              showSelectedLabels: false,
              currentIndex: currentIndex,
              items: [
                BottomNavigationBarItem(
                  icon: Icon(Icons.home),
                  activeIcon: Icon(Icons.home),           label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.bar_chart),
                  activeIcon: Icon(Icons.bar_chart),                 label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.book),
                  activeIcon: Icon(Icons.book),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Stack(
                    children: <Widget>[
                      Icon(Icons.chat_bubble),
                      Positioned(
                        top: -2,
                        right: -6,
                        child: CircleAvatar(radius: 3, backgroundColor: Colors.white),
                      )
                    ],
                  ),
                  activeIcon: Stack(
                    children: <Widget>[
                      Icon(Icons.chat),
                      Positioned(
                        top: -2,
                        right: -6,
                        child: CircleAvatar(radius: 3, backgroundColor: Colors.white),
                      )
                    ],
                  ),
                  label: 'a',
                ),
                BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle),
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('logo.jpg',
                        height: 35,
                        width: 10,
                      ),
                    ),
                  ),
                  activeIcon: Container(
                    decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.white, width: 2)),
                    height: 30,
                    width: 30,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset('logo.jpg',
                        height: 35,
                        width: 10,
                      ),
                    ),
                  ),
                  label: 'a',
                ),
              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}


class LessonsModel {
  Image image;
  String title;

  LessonsModel({
    this.image,
    this.title,
  });
}

List<LessonsModel> lessons = [
  LessonsModel(
    image: Image.asset('logo.jpg'),
    title: 'Ders1',
  ),
  LessonsModel(
    image: Image.asset('logo.jpg'),
    title: 'Ders2',
  ),
  LessonsModel(
    image: Image.asset('logo.jpg'),
    title: 'Ders3',
  ),
  LessonsModel(
    image: Image.asset('logo.jpg'),
    title: 'Ders4',
  ),
  LessonsModel(
    image: Image.asset('logo.jpg'),
    title: 'Ders5',
  ),
  LessonsModel(
    image: Image.asset('logo.jpg'),
    title: 'Ders6',
  ),
];
class LiveVideoModel {
  Image image;
  String title;
  String message;
  String status;

  LiveVideoModel({
    this.image,
    this.title,
    this.message,
    this.status,
  });
}

List<LiveVideoModel> liveVideo = [
  LiveVideoModel(
      image: Image.asset('kres.jpg'),
      title: 'A Eğitimi',
      message: 'Uzmanların a eğitimi ile ilgili videoları',
      status: 'AÇIK'),
  LiveVideoModel(
      image: Image.asset('kres2.jpg'),
      title: 'B Eğitimi2',
      message: 'Uzmanların b eğitimi ile ilgili videoları',
      status: 'KAPALI'),
  LiveVideoModel(
      image: Image.asset('logo.jpg'),
      title: 'C Eğitimi',
      message: 'Uzmanların c eğitimi ile ilgili videoları',
      status: 'AÇIK'),
];
class SDExamCardModel {
  Image image;
  String examName;
  String time;
  Widget icon;
  Color startColor;
  Color endColor;

  SDExamCardModel({this.image, this.examName, this.time, this.icon, this.startColor, this.endColor});
}

List<SDExamCardModel> cards = [
  SDExamCardModel(
    image: Image.asset('kres.jpg'),
    examName: '3 ay eğitim\npaketi',
    time: '30 dk',
    icon: Icon(Icons.notifications_active, color: Colors.white54),
    startColor: Color(0xFF2889EB),
    endColor: Color(0xFF0B56CB),
  ),
  SDExamCardModel(
    image: Image.asset('kres.jpg'),
    examName: '6 ay eğitim\npaketi',
    time: '1 saat',
    icon: Icon(Icons.notifications_active, color: Colors.white54),
    startColor: Color(0xFFF1AD4B),
    endColor: Color(0xFFF26340),
  ),
  SDExamCardModel(
    image: Image.asset('kres.jpg'),
    examName: '1 yıl eğitim\npaketi',
    time: '3 saat',
    icon: Icon(Icons.notifications_active, color: Colors.white54),
    startColor: Colors.purpleAccent,
    endColor: Colors.purple,
  ),
];

// ignore: non_constant_identifier_names
Widget HomeDash(BuildContext context) {
  return Container(
    child: SingleChildScrollView(
      padding: EdgeInsets.only(top: 20, bottom: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withOpacity(0.8),
            blurRadius: 0,
            spreadRadius: 0,
          ),
        ],
        color: Colors.blueGrey,
      ),
                    child: TextField(
                      autofocus: false,
                      readOnly: true,
                      onTap: () {
                      },
                      style: TextStyle(fontSize: 20),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Ara...',hintStyle: TextStyle(color:Colors.white),
                        prefixIcon: Icon(Icons.search, color: Colors.white),
                      ),
                    ),
                  ),
                ),
                Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 10),
                      padding: EdgeInsets.only(left: 10, top: 5, right: 15),
                      child:  Icon(Icons.notifications_none, size: 30, color: Colors.black),
                    ),
                    Positioned(
                      right: 9,
                      top: 0,
                      child: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.red,
                        child: Text('1', style: TextStyle(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text('Hoşgeldiniz', style: TextStyle(fontSize: 20)),
          ),
          SizedBox(height: 10),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text('Size daha iyi hizmet verebilmemiz için bilgilerinizi tamamlayınız', style: TextStyle(fontSize: 14)),
          ),
          SizedBox(height: 15),
          Container(
            height: 250,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: cards.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 180.0,
                  margin: EdgeInsets.only(left: 16),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.8),
                        blurRadius: 4,
                        spreadRadius: 1,

                      ),
                    ],
                    color: Colors.lightBlue,
                    gradient: LinearGradient(colors: [cards[index].startColor, cards[index].endColor]),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Image.asset('kres.jpg'),
                      SizedBox(height: 15),
                      Text(cards[index].examName, style: TextStyle(color: Colors.white, fontSize: 20)),
                      SizedBox(height: 15),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(cards[index].time, style: TextStyle(color: Colors.white54, fontSize: 18)),
                            cards[index].icon,
                          ]),
                    ],
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: Text('Dersler', style: TextStyle(fontSize: 16))),
                InkWell(
                  onTap: () {
                  },
                  child: Text('Tümünü Gör', style: TextStyle(color: Colors.blueAccent, fontSize: 14)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Text('6 aylık eğitim paketi', style: TextStyle(fontSize: 14)),
          ),
          SizedBox(height: 5),
          Container(
            height: 150,
            child: ListView.builder(
                padding: EdgeInsets.only(right: 16),
                scrollDirection: Axis.horizontal,
                itemCount: lessons.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {

                    },
                    child: Container(
                      margin: EdgeInsets.only(left: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.white,
                            child: lessons[index].image
                          ),
                          Container(margin: EdgeInsets.only(top: 10), child: Text(lessons[index].title)),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          SizedBox(height: 25),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(child: Text('Eğitim Videoları', style: TextStyle(fontSize: 16))),
                InkWell(
                  onTap: () {
                  },
                  child: Text('Tümünü Gör', style: TextStyle(color: Colors.blueAccent, fontSize: 14)),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 130,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: liveVideo.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: EdgeInsets.only(left: 20),
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [BoxShadow(color: Colors.white10, blurRadius: 10, spreadRadius: 2)],
                  border: Border.all(color: Colors.transparent),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: 130,
                        width: 115,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                          image: DecorationImage(image: AssetImage('kres2.jpg'), fit: BoxFit.fill),
                        ),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(liveVideo[index].title, style: TextStyle(fontSize: 16)),
                                Padding(
                                  padding: EdgeInsets.only(top: 6),
                                  child: Align(alignment: Alignment.topRight, child: Icon(Icons.more_vert)),
                                )
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 8),
                              child: FittedBox(
                                child: Text(
                                  liveVideo[index].message,
                                  style: TextStyle(fontSize: 14),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Container(
                                margin: EdgeInsets.only(top: 15),
                                decoration: BoxDecoration(
                                  color: Colors.redAccent,
                                  boxShadow: [BoxShadow(color: Colors.white10, blurRadius: 10, spreadRadius: 2)],
                                  border: Border.all(color: Colors.transparent),
                                  borderRadius: BorderRadius.all(Radius.circular(4)),
                                ),
                                padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
                                child: Center(
                                  child: Text(liveVideo[index].status, style: TextStyle(fontSize: 8, color: Colors.white)),
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    ),
  );
}
