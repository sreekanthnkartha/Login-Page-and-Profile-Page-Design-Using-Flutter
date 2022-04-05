import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  String link = "";
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(

        floatingActionButton: Align(alignment: Alignment.bottomRight,
        child: FloatingActionButton(onPressed: (){},child: Icon(Icons.add),backgroundColor: Colors.orangeAccent,)),
        appBar: AppBar(
          title: Text(
            "Profile",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
        ),
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/bg2.jpg'),
              colorFilter: new ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop),
              fit: BoxFit.fill,)
            
          ),
          child: ListView(children: [
            SizedBox(
              height: 30,
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              // padding: EdgeInsets.all(8.0),
              child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                CircleAvatar(
                  radius: 55,
                  // child: Align(
                  // alignment: Alignment.bottomRight,
                  // child: Icon(Icons.change_circle_outlined,color: Colors.blueAccent,size: 30,)),
                  backgroundImage: AssetImage("images/dp.jpg"),
                ),
                SizedBox(
                  width: 36,
                ),
                Card("Virat Kohli", "Proff Cricketer", 25, 19),
              ]),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.orangeAccent),color: Colors.white.withOpacity(0.5)),
              margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              padding: EdgeInsets.all(20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Card("35g", "Protien", 25, 19),
                    SizedBox(
                      width: 20,
                    ),
                    Card("23g", "Carbs", 25, 19),
                    SizedBox(
                      width: 20,
                    ),
                    Card("19g", "Fat", 25, 19),
                  ]),
            ),
            Container(
              // decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              // padding: EdgeInsets.all(20.0),
              child: Row(
                  // margin: const EdgeInsets.fromLTRB(25,15,25,15),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card("Daily Calories", "1800-2000 kal", 20, 16),
                    FlatButton(
                      onPressed: () {},
                      child: Text("Edit"),
                      color: Colors.orangeAccent,
                    )
                  ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              // padding: EdgeInsets.all(20.0),
              child: Row(
                  // margin: const EdgeInsets.fromLTRB(25,15,25,15),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card("Macronutrient Distribution",
                        "Protein (40%) Carbs (35%) Fat (25%)", 20, 16),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              // padding: EdgeInsets.all(20.0),
              child: Row(
                  // margin: const EdgeInsets.fromLTRB(25,15,25,15),
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                        "My Collection", "Already collected 40 recipies", 20, 16),
                  ]),
            ),
            Container(
              margin: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              // padding: EdgeInsets.all(20.0),
              child: Column(
                  // margin: const EdgeInsets.fromLTRB(25,15,25,15),
                  // mainAxisAlignment: MainAxisAlignment.s,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                        "Favourite Meals", "45 meals saved on favorites", 20, 16),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "images/fd1.jpg",
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "images/fd2.jpg",
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "images/fd3.jpg",
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 10),
                        Image.asset(
                          "images/fd4.jpg",
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                        SizedBox(width: 10),
                        Container(
                          height: 40,
                          width: 40,
                          color: Colors.orangeAccent[100],
                          child: Align(
                              alignment: Alignment.center,
                              child: Icon(
                                Icons.add_photo_alternate_outlined,
                                color: Colors.black,
                              )),
                        )
                      ],
                    )
                  ]),
            ),
          ]),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
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
