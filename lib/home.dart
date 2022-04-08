import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Hpage extends StatefulWidget {
  const Hpage({Key? key}) : super(key: key);

  @override
  State<Hpage> createState() => _HpageState();
}

class _HpageState extends State<Hpage> {
  @override
  final List<String> imageList = [
    "images/fd1.jpg",
    "images/fd2.jpg",
    "images/fd3.jpg",
    "images/fd4.jpg",
  ];
  int activeindex = 0;
  CarouselController cont = CarouselController();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial App"),
          elevation: 0,
          toolbarHeight: 70,
          // centerTitle: true,
          backgroundColor: Colors.blueGrey[700],
          leading: Image.asset(
            "images/logo1.png",
          ),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
        ),
        body: Column(
          children: [
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.orangeAccent),color: Colors.white.withOpacity(0.5)),
              margin: const EdgeInsets.all(15),
              width: 3000,
              padding: EdgeInsets.all(20.0),
              child: Card("Welcom User", "12 courses completed", 25, 19),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: CarouselSlider.builder(
                itemCount: imageList.length,
                carouselController: cont,
                options: CarouselOptions(
                  onPageChanged: (index, reason) => {
                    setState(() {
                      activeindex = index;
                    })
                  },
                  // enlargeCenterPage: true,
                  height: 200,
                  autoPlay: true,
                  // pauseAutoPlayOnTouch: true,
                  // pauseAutoPlayOnManualNavigate: true,
                  
                  autoPlayInterval: Duration(seconds: 3),
                  reverse: false,
                  aspectRatio: 5.0,
                ),
                itemBuilder: (context, i, id) {
                  return GestureDetector(
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white,
                          )),
                      child: Container(
                        // borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          imageList[i],
                          width: 500,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
            AnimatedSmoothIndicator(
              activeIndex: activeindex,
              count: imageList.length,
              effect: WormEffect(),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Card("Courses", "", 25, 19)),
            ),
          ],
        ),     
    );
  }
  Widget Card(String a, String b, double x, double y) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          a,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: x),
        ),
        SizedBox(
          height: 3,
        ),
        Text(
          b,
          style: TextStyle(fontWeight: FontWeight.w300, fontSize: y),
        )
      ]),
    );
  }
}
