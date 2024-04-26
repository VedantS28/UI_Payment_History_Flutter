import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/custom_list_tile.dart';

import 'package:flutter_application_1/utils/piechart.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Financial Report',
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Report',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back, size: 30),
          actions: const [
            Icon(
              Icons.more_horiz,
              size: 35,
            )
          ],
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("assets/1.jpg"),
                      fit: BoxFit.cover,
                      opacity: 0.6)),
              child: Container(
                  margin: const EdgeInsets.all(50), child: const MyPieChart()),
            ),
            const SizedBox(height: 15,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text("History",style: TextStyle(fontWeight: FontWeight.w800,fontSize: 25),),
                 SizedBox(width: MediaQuery.of(context).size.width*0.35,),
                const Text("This Month",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,color: Colors.grey),),
                const Icon(Icons.arrow_downward,color: Colors.grey,size: 20,)
              ],
            ),
            const SizedBox(height: 15,),
            Expanded(
              child: ListView(
                children: const [
                  CustomListTile(image: "assets/ai.png",color: Colors.orangeAccent,text: "Adobe Illustrator",value: -23.99,date: "10 Jan 2022",ispositive: false,),
                  CustomListTile(image: "assets/card.png",color: Colors.orangeAccent,text: "Transfer from Claude",value: 950.99,date: "09 Jan 2022",ispositive: true,),
                  CustomListTile(image: "assets/nf.png",color: Colors.orangeAccent,text: "Netflix Ultra HD",value: -16.99,date: "09 Jan 2022",ispositive: false,),
                  CustomListTile(image: "assets/sf.png",color: Colors.orangeAccent,text: "Spotify Premium",value: -11.99,date: "09 Jan 2022",ispositive: false,),
                  CustomListTile(image: "assets/ps.png",color: Colors.orangeAccent,text: "FIFA 2022 Ultimate",value: -16.99,date: "09 Jan 2022",ispositive: false,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
