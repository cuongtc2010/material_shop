import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:material_shop/src/Utilities/media_utils.dart';

import '../../MyApp.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  titleContent({String title}) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title),
          Spacer(),
          Text("View all", style: TextStyle(color: appTheme.primaryColor))
        ],
      ),
    );
  }

  _listTopProduct() {
    final List<TopProductContent> topProductContent = [
      TopProductContent(
          title: "RAM Consair",
          price: "300.000đ",
          image:
              'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'),
      TopProductContent(
          title: "RAM Consair",
          price: "300.000đ",
          image:
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80'),
      TopProductContent(
          title: "RAM Consair",
          price: "300.000đ",
          image:
          'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80')
    ];

    return Container(
      height: MediaUtils.screenSizeHeight(context) / 3,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: topProductContent,
      ),
    );
  }

  _listNews(){
    final List<NewsContent> listNewsContent = [
      NewsContent(image: 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80', title: "MUA HÀNG NGAY NHẬN QUÀ LIỀN TAYYYY", content: "Chương trình khuyến mãi cho các hoá đơn mua hàng online Biti's. Chi tiết chương trình xem tại: http://on.fb.me/1IOIs1Z "),
      NewsContent(image: 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80', title: "MUA HÀNG NGAY NHẬN QUÀ LIỀN TAY", content: "Chương trình khuyến mãi cho các hoá đơn mua hàng online Biti's. Chi tiết chương trình xem tại: http://on.fb.me/1IOIs1Z "),
      NewsContent(image: 'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80', title: "MUA HÀNG NGAY NHẬN QUÀ LIỀN TAY", content: "Chương trình khuyến mãi cho các hoá đơn mua hàng online Biti's. Chi tiết chương trình xem tại: http://on.fb.me/1IOIs1Z ")
    ];
    return SingleChildScrollView(
      child: Column(children: listNewsContent),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
              padding: EdgeInsets.only(left: 20.0, right: 5.0),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  border: Border.all(color: Colors.grey[300]),
                  borderRadius: BorderRadius.all(Radius.circular(50.0))),
              child: TextField(
                  enabled: false,
                  decoration: InputDecoration(
                      suffixIcon: Icon(Icons.search),
                      hintText: "Nhập từ khóa cần tìm kiếm...",
                      border: InputBorder.none))),
          onTap: () {
            print("Đang làm!");
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            CarouselContent(content: "Slide"),
            CategoryContent(),
            SizedBox(height: 20),
            titleContent(title: "Products"),
            _listTopProduct(),
            SizedBox(height: 10),
            titleContent(title: "News"),
            _listNews()
          ],
        ),
      ),
    );
  }
}

///Danh sách carousel
class CarouselContent extends StatefulWidget {
  final String content;

  CarouselContent({this.content});

  @override
  _CarouselContentState createState() => _CarouselContentState();
}

class _CarouselContentState extends State<CarouselContent> {
  int _currentSlide = 0;
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  List<T> map<T>(List list, Function handle) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handle(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CarouselSlider(
              height: 150.0,
              initialPage: 0,
              enlargeCenterPage: true,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 2),
              autoPlayAnimationDuration: Duration(milliseconds: 2000),
              onPageChanged: (index) {
                setState(() {
                  _currentSlide = index;
                });
              },
              items: imgList.map((imgUrl) {
                return Builder(builder: (context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 10.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                    child: ClipRRect(
                        child: Image.network(imgUrl, fit: BoxFit.fill),
                        borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  );
                });
              }).toList(),
            ),
            SizedBox(width: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(imgList, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _currentSlide == index
                          ? Color.fromRGBO(94, 127, 253, 1.0)
                          : Colors.grey),
                );
              }),
            )
          ],
        ));
  }
}

///Danh mục sản phẩm
class CategoryContent extends StatelessWidget {
  _buildListCategory({IconData icon, String title, GestureTapCallback onTap}) {
    return InkWell(
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Stack(
        alignment: Alignment(0.0, 1.0),
        children: <Widget>[
          Container(
              width: 100.0,
              height: 70.0,
              child: Icon(icon, color: Color.fromRGBO(94, 127, 253, 1.0))),
          Text(title)
        ],
      ),
      onTap: onTap,
    );
  }

  _listCategory() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          _buildListCategory(
              title: 'RAM',
              icon: FontAwesome.getIconData('microchip'),
              onTap: () {
                print("Chưa có gì!");
              }),
          SizedBox(
            width: 10.0,
          ),
          _buildListCategory(
              title: 'SSD',
              icon: FontAwesome.getIconData('hdd-o'),
              onTap: () {
                print("Chưa có gì!");
              }),
          SizedBox(
            width: 10.0,
          ),
          _buildListCategory(
              title: 'Desktop',
              icon: FontAwesome.getIconData('desktop'),
              onTap: () {
                print("Chưa có gì!");
              }),
          SizedBox(
            width: 10.0,
          ),
          _buildListCategory(
              title: 'Keyboard',
              icon: FontAwesome.getIconData('keyboard-o'),
              onTap: () {
                print("Chưa có gì!");
              }),
          SizedBox(
            width: 10.0,
          ),
          _buildListCategory(
              title: 'All',
              icon: Ionicons.getIconData('logo-angular'),
              onTap: () {
                print("Chưa có gì!");
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        height: 70.0,
        child: _listCategory());
  }
}

///Sản phẩm hot
class TopProductContent extends StatelessWidget {
  final String title, price, image;

  TopProductContent({this.title, this.price, this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: Stack(
            children: <Widget>[
              Container(
                color: Colors.red,
                height: MediaUtils.screenSizeHeight(context) / 3,
                width: MediaUtils.screenSizeWidth(context) / 3,
                child: Image.network(image, fit: BoxFit.cover),
              ),
              Positioned(
                left: 0.0,
                bottom: 0.0,
                width: MediaUtils.screenSizeWidth(context) / 3,
                height: MediaUtils.screenSizeHeight(context) / 6,
                child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.black, Colors.black.withOpacity(0.1)]))),
              ),
              Positioned(
                  left: 10.0,
                  bottom: 10.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text(price, style: TextStyle(color: Colors.white, fontSize: 12)
                      )
                    ],
                  ))
            ],
          ),
        ));
  }
}

///Tin mới
class NewsContent extends StatelessWidget{
  final String image, title, content;
  NewsContent({this.image, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      height: MediaQuery.of(context).size.height / 2,
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          elevation: 5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3,
                width: MediaQuery.of(context).size.width,
                child: ClipRRect(
                    child: Image.network(
                        image,
                        fit: BoxFit.fill),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10.0),
                        topRight: Radius.circular(10.0))),
              ),
              Padding(
                padding:
                EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Text(title,
                    style: TextStyle(fontWeight: FontWeight.bold),
                    overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                    content,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis),
              ),
            ],
          )),
    );
  }
}
