import 'package:flutter/material.dart';
import 'package:workshop2_recipeapp/model/homemodel.dart';

class procedure extends StatefulWidget {
  final recipe obj;
  const procedure(this.obj);

  @override
  _procedureState createState() => _procedureState();
}

class _procedureState extends State<procedure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Text("Recipe"),
        ),
        body: SingleChildScrollView(

          child: Center(
            child: Column(
              children: [
                Text(
                  widget.obj.name,
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    height: 200,
                    width: 250,
                    child: Image.network(
                      widget.obj.image,
                      fit: BoxFit.fill,
                    )),
                Text("Ingredients:",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                Text(widget.obj.ingredients),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.green),
                    child: Text("Method:",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)

                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.obj.method,),
                ),

              ],
            ),
          ),
        ));
  }
}
