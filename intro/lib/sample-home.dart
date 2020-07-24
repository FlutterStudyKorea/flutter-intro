import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

final dummyItems = [
  'https://cdn.pixabay.com/photo/2018/11/12/18/44/thanksgiving-3811492_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/10/30/15/33/tajikistan-4589831_1280.jpg',
  'https://cdn.pixabay.com/photo/2019/11/25/16/15/safari-4652364_1280.jpg',
];

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
        child: ListView(
          children: <Widget>[
            _buildTop(),
            _buildMiddle(),
            _buildBottom(),
            _buildCarousel(),
            _buildListView(),
          ],
        ),
      ),
    );
  }

  Widget _buildTop() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('택시')
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('블랙'),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('바이크'),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('대리'),
          ],
        ),
      ],
    );
  }

  Widget _buildMiddle() {
    return SizedBox(
      height: 20,
    );
  }

  Widget _buildBottom() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('택시'),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('블랙'),
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.local_taxi,
              size: 50,),
            Text('바이크'),
          ],
        ),
        Opacity(
          opacity: 0.0,
          child: Column(
            children: <Widget>[
              Icon(Icons.local_taxi,
                size: 50,),
              Text('바이크'),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildCarousel() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
      child: CarouselSlider(
          options: CarouselOptions(height: 150.0),
          items: dummyItems.map((url) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            );
          }).toList()
      ),
    );
  }

  Widget _buildListView() {
    final items = List.generate(10, (i) {
      return ListTile(
        leading: Icon(Icons.notifications,
          color: Colors.grey[800],
        ),
        title: Text('[이벤트] 이것은 공지사항입니다.'),
      );
    });

    return ListView(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
