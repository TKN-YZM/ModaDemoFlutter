import 'package:flutter/material.dart';

import 'secondPage.dart';

void main() {
  runApp(const ModaApp());
}

class ModaApp extends StatelessWidget {
  const ModaApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
    );
  }
}

class homePage extends StatefulWidget {
  const homePage({super.key});
  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  @override
  late TabController tabController;

  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        child: TabBar(
          controller: tabController,
          tabs: [
            Tab(
              child: Icon(
                Icons.home,
                color: Colors.grey,
                size: 30,
              ),
            ),
            Tab(
              child: Icon(
                Icons.home,
                color: Colors.grey,
                size: 30,
              ),
            ),
            Tab(
              child: Icon(
                Icons.home,
                color: Colors.grey,
                size: 30,
              ),
            )
          ],
        ),
      ),
      //Appbar
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Moda Page",
            style: TextStyle(
                fontFamily: "mainFont",
                color: Colors.black,
                fontSize: 22,
                fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.camera_alt),
            color: Colors.black,
          )
        ],
      ),
      //Üst kısımdaki profil ve follow ibaresi
      body: ListView(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  listeElemani("assets/pictures/model4.jpg",
                      "assets/pictures/chanellogo.jpg"),
                  SizedBox(width: 25),
                  listeElemani("assets/pictures/model2.jpeg",
                      "assets/pictures/louisvuitton.jpg"),
                  SizedBox(width: 25),
                  listeElemani("assets/pictures/model1.jpeg",
                      "assets/pictures/chanellogo.jpg"),
                  SizedBox(width: 25),
                  listeElemani("assets/pictures/model3.jpeg",
                      "assets/pictures/chanellogo.jpg"),
                  SizedBox(width: 25),
                  listeElemani("assets/pictures/model3.jpeg",
                      "assets/pictures/modelgrid3.jpg"),
                  SizedBox(width: 25),
                  listeElemani("assets/pictures/model2.jpeg",
                      "assets/pictures/modelgrid1.jpg"),
                  SizedBox(width: 25),
                  listeElemani("assets/pictures/model3.jpeg",
                      "assets/pictures/modelgrid3.jpg"),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(16),
              child: Container(
                height: 460,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    //Paylaşım yapan kişinin resmi sağ icon ve paylaşım tarihi
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/pictures/model4.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          width: 11,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Abdullah",
                                style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: "mainFont",
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "30 mins ago",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 10,
                      height: 15,
                    ),
                    Text(
                      "  Hello Dear Friend, today i want write somethings about new year. New year will be okey",
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontFamily: "mainFont"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        //Ana Resim
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SecondPage(
                                      resimYolu:
                                          "assets/pictures/modelgrid1.jpeg"),
                                ));
                          },
                          child: Hero(
                            tag: "assets/pictures/modelgrid1.jpeg",
                            child: Container(
                              height: 200,
                              width:
                                  (MediaQuery.of(context).size.width - 50) / 2,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.black,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/pictures/modelgrid1.jpeg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        //2 Resim
                        Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SecondPage(
                                          resimYolu:
                                              "assets/pictures/modelgrid2.jpeg"),
                                    ));
                              },
                              child: Hero(
                                tag: "assets/pictures/modelgrid2.jpeg",
                                child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/pictures/modelgrid2.jpeg"),
                                            fit: BoxFit.cover))),
                              ),
                            ),
                            SizedBox(height: 10),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SecondPage(
                                          resimYolu:
                                              "assets/pictures/modelgrid3.jpeg"),
                                    ));
                              },
                              child: Hero(
                                tag: "assets/pictures/modelgrid3.jpeg",
                                child: Container(
                                    height: 95,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/pictures/modelgrid3.jpeg"),
                                            fit: BoxFit.cover))),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      //Alt kısımdaki yazı
                      children: [
                        Container(
                          width: 100,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.1)),
                          child: Center(
                              child: Text(
                            "#Autumn",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "mainFont",
                                color: Colors.brown),
                          )),
                        ),
                        SizedBox(width: 10),
                        Container(
                          width: 75,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.brown.withOpacity(0.1)),
                          child: Center(
                              child: Text(
                            "#Winter",
                            style: TextStyle(
                                fontSize: 12,
                                fontFamily: "mainFont",
                                color: Colors.brown),
                          )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Divider(color: Colors.brown, height: 10),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Icon(Icons.reply,
                            size: 20, color: Colors.brown.withOpacity(0.4)),
                        SizedBox(width: 5),
                        Text(
                          "1.7K",
                          style: TextStyle(
                              fontFamily: "mainFont",
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(width: 25),
                        Icon(Icons.comment,
                            size: 20, color: Colors.brown.withOpacity(0.4)),
                        SizedBox(width: 5),
                        Text(
                          "325",
                          style: TextStyle(
                              fontFamily: "mainFont",
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        ),
                        SizedBox(width: 140),
                        Icon(Icons.heart_broken, size: 20, color: Colors.red),
                        SizedBox(width: 5),
                        Text(
                          "637",
                          style: TextStyle(
                              fontFamily: "mainFont",
                              fontSize: 16,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget listeElemani(String imagePath, String logoPath) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 75,
              width: 75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                      image: AssetImage(imagePath), fit: BoxFit.cover)),
            ),
            Positioned(
              top: 50,
              left: 50,
              child: Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage(logoPath), fit: BoxFit.cover))),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 30,
          width: 75,
          child: Center(
            child: Text("Follow",
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontFamily: "mainFont",
                    fontWeight: FontWeight.bold)),
          ),
          decoration: BoxDecoration(
              color: Colors.brown, borderRadius: BorderRadius.circular(20)),
        )
      ],
    );
  }
}
