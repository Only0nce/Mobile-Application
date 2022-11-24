import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'tweet.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FeedFresh",
      theme: ThemeData(
        primaryColor: Colors.white,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Twitter(),
    );
  }
}

class Twitter extends StatefulWidget {
  const Twitter({super.key});

  @override
  State<Twitter> createState() => _TwitterState();
}

class _TwitterState extends State<Twitter> {
  var tweetList = [];
  var range = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  var count = 0;
  var tweetList_pr = [
    Tweet(
      state: false,
      time: "16s",
      name: '@OnlyOne',
      avatar_url:
          '',
      postText: 'Hello FeedFresh!! My name is Jirud Thawisapkamon 1620900603',
      avatar_pro:
          '',
    ),
    Tweet(
      state: true,
      time: "59s",
      name: '@OnlyOne',
      avatar_url:
          '/Photo/profile.JPG',
      postText: 'Time to change profile eiei^_^',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: true,
      time: "2h",
      name: '@OnlyOne',
      avatar_url:
          '/Photo/focus1.JPG',
      postText: 'อันนี้แหละที่เราตามหา เพื่อน @Tuppy_eiei ณ SORLAB',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: false,
      time: "2h",
      name: '@OnlyOne',
      avatar_url:
          '',
      postText: 'เรียนเขียนโปรแกรมมันเหนื่อยจริงแฮ่ะ แต่พอเขียนได้แล้วอะไรๆก็คงง่ายเองแหละ',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: true,
      time: "4h",
      name: '@OnlyOne',
      avatar_url:
          '/Photo/event.JPG',
      postText: 'ออกงานครั้งแรกก็จะเนื้อหอมหน่อย',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: false,
      time: "4h",
      name: '@OnlyOne',
      avatar_url:
          '',
      postText: 'อยากจบแล้วครับอาจารย์ TT',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: true,
      time: "10h",
      name: '@OnlyOne',
      avatar_url:
          '/Photo/work1.JPG',
      postText: 'เข้าโหมดจริงจังสักหน่อย',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: false,
      time: "15h",
      name: '@OnlyOne',
      avatar_url:
          '',
      postText: 'สอบอีกแล้วหรอ อ่านหนังสือไม่ทันแล้วนะ',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: true,
      time: "15h",
      name: '@OnlyOne',
      avatar_url:
          '/Photo/racing.JPG',
      postText: 'นานๆ ได้ทำงานเป็นทีมสักหน่อย BURL',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
    Tweet(
      state: true,
      time: "22h",
      name: '@OnlyOne',
      avatar_url:
          '/Photo/prem.JPG',
      postText: 'ไอ้เxี้ยเปรม',
      avatar_pro:
          '/Photo/profile.JPG',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // ignore: prefer_const_constructors
          margin: const EdgeInsets.all(10.0),
          // ignore: prefer_const_constructors
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
                '/Photo/logoFeedFresh.png'),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        // ignore: prefer_const_constructors
        title: Text(
          "FeedFresh",
          // ignore: prefer_const_constructors
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            buildIconButton(Icons.home, Colors.blue),
            buildIconButton(Icons.search_outlined, Colors.grey),
            buildIconButton(Icons.notifications_outlined, Colors.grey),
            buildIconButton(Icons.email_outlined, Colors.grey),
          ],
        ),
      ),
      body: listofTweet(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.pen),
        onPressed: () {
          setState(() {
            if (count == 9) {
              tweetList.insert(0, tweetList_pr[9]);
            } else {
              tweetList.insert(0, tweetList_pr[count]);
              count++;
            }
          });
        },
      ),
    );
  }

  Widget listofTweet() {
    return Container(
        color: Colors.white,
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return tweetList[index];
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(
                  height: 10,
                ),
            itemCount: tweetList.length));
  }

  Widget buildIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }
}
