import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:lab_lobter/main.dart';

void main() {
  runApp(const MyApp());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Cuisine App"),
        ),
        body: ListView(
          children: [
            Image.asset("images/lobster_cover.jpg"),
            section(),
            me(),
            date(),
            bar(),
            section1(),
            content1(),
           
          ],
        ));
  }

 

  

  Container content1() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 20),
      child: Column(
        children: const [
          Text(
            'ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า ',
            style: TextStyle(
              color: Colors.black54,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  Row section1() {
    return Row(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[700],
            ),
          ),
        ),
        const Text(
          'เกริ่นสักหน่อย',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w800,
          ),
        ),
        Expanded(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 20),
            child: Divider(
              thickness: 2,
              color: Colors.grey[700],
            ),
          ),
        ),
      ],
    );
  }

  Container bar() {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      margin: EdgeInsets.all(2.0),
      child: Card(
        color: Colors.amber[200],
        child: Row(
          children: [
            prepare(),
            make(),
            calorie(),
            finish(),
          ],
        ),
      ),
    );
  }

  Widget finish() {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.user,
              color: Colors.green,
            ),
            Text(
              'สำหรับ',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '5 เสิร์ฟ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget calorie() {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.gripfire,
              color: Colors.red,
            ),
            Text(
              'แคลอรี่',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '300 Kcal/เสิร์ฟ',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget make() {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.utensils,
              color: Colors.orange,
            ),
            Text(
              'เวลาปรุง',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '50 นาที',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget prepare() {
    return Container(
      child: Padding(
        padding: EdgeInsets.fromLTRB(20, 10, 8, 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(
              FontAwesomeIcons.stopwatch,
              color: Colors.blue,
            ),
            Text(
              'เวลาเตรียม',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '10 นาที',
              style: TextStyle(
                color: Colors.black54,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget date() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '17 ธ.ค. 2564 ● โดย เชฟรีน',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Container me() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: CircleAvatar(
        radius: 80,
        backgroundImage: NetworkImage(
          'https://scontent.furt2-1.fna.fbcdn.net/v/t1.6435-9/176342714_3002687096639774_1289639534358459303_n.jpg?_nc_cat=111&ccb=1-5&_nc_sid=09cbfe&_nc_eui2=AeGY4Lt6qhf9j8L2hvqHFcNxY-NwMFqBNyJj43AwWoE3IixjjXdXjTFm7bfCbLCdSYqfqf2pScZPCw0EaxT1JVhL&_nc_ohc=CEzLJssDhmgAX-FO04t&_nc_ht=scontent.furt2-1.fna&oh=00_AT_1Ev8Vc60KM_5C_MazZZzxmDIcy2Xmyf_d_Xtq5lK9QA&oe=6232A5B3',
        ),
      ),
    );
  }

  Container section() {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 10, 30, 10),
      child: Column(
        children: [
          Text(
            'วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน!',
            style: TextStyle(
              color: Colors.lightBlue,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! ',
            style: TextStyle(
              color: Colors.black45,
              fontSize: 18,
              fontWeight: FontWeight.normal,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }

  SizedBox picture() {
    return SizedBox(
      height: 200,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill, image: AssetImage('image/lobster_cover.jpg')),
        ),
      ),
    );
  }
}