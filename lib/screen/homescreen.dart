import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:workshop2_recipeapp/model/homemodel.dart';
import 'procedure.dart';

class MyKitchenApp extends StatefulWidget {
  @override
  _MyKitchenAppState createState() => _MyKitchenAppState();
}

class _MyKitchenAppState extends State<MyKitchenApp> {
  @override
  Widget build(BuildContext context) {
    final ScreenHeight = MediaQuery.of(context).size.height;
    final ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column
            (children: [
            Stack(
              children: [
                Image.network(
                  "https://cutewallpaper.org/21/indian-food-wallpapers/Indian-Food-Menu-Background-Hd-Wallpapers-backgrounds-.jpg",
                  height: ScreenHeight * 0.30,
                  width: ScreenWidth,
                  fit: BoxFit.fill,
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Text(
                      "Recipes From My Kitchen",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " By Category",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    " view all",
                    style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.w500,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Container(
              height: 60,
              width: 550,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categorylist.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        width: 130,
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(child: Text(categorylist[index].name,
                              style:TextStyle(color:Colors.white,fontSize:20,fontWeight:FontWeight.bold)),
                      ),
                      )
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " Popular",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    " view all",
                    style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.w500,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            Container(
              height: 133,
              width: 950,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recipelist.length,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                          builder: (_) => procedure(recipelist[index])));
                    },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                                  height: 100,
                                 width:130,
                                child: Image.network(recipelist[index].image,fit:BoxFit.fill,)),
                            Text(recipelist[index].name),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      " Explorer",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    ),
                  ),
                  Text(
                    " view all",
                    style: TextStyle(
                        fontSize: 17,
                        //fontWeight: FontWeight.w500,
                        color: Colors.blueAccent),
                  ),
                ],
              ),
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                reverse: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:2),
                itemCount:recipelist.length,
                itemBuilder: (context,index){
                  return InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (_) => procedure(recipelist[index])));
                  },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                              height:130,
                              width:130,
                              child: Image.network(recipelist[index].image,fit:BoxFit.fill,)),
                          Text(recipelist[index].name),
                        ],

                      ),
                    ),
                  );
             })
            ],
        ),
      ),
    )

    );
  }
}
