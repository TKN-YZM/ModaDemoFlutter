
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  String resimYolu;
  SecondPage({required this.resimYolu,super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          Hero(
          tag: widget.resimYolu,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(widget.resimYolu),
              fit: BoxFit.cover
              )
            ),),),
          Positioned(
            left: 15,
            right: 15,
            bottom: 15,
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 200,
                width: MediaQuery.of(context).size.width-50,
                decoration: BoxDecoration(
                  color: Colors.white38,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children:[ 
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Container(
                        height: 110,
                        width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/pictures/dress.jpg"),fit: BoxFit.cover)
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ürün Başlığı",style: TextStyle(fontFamily: "mainFont",fontSize: 20,
                        fontWeight: FontWeight.bold),),
                        SizedBox(height: 15,),
                        Text("Alt Başlığı",style: TextStyle(fontFamily: "mainFont",fontSize: 13),),
                        SizedBox(height: 15,),
                        Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width-200,
                          child: Text("This dress is really cheap! You have no time!Iasdasawasdaddwdwd asdasdasdas",style: 
                          TextStyle(fontFamily: "mainFont",fontSize: 10),)),
                      ],
                      )
                      ]
                    ),
                    Divider(color: Colors.black,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("579.99 TL")
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
}