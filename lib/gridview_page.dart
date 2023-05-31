import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridviewExample extends StatelessWidget {
  const GridviewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
           mainAxisExtent: 150,
          ),
          itemCount: 9,
          itemBuilder: (BuildContext context,int position){
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  height: 100,
                  color: Colors.amber,
                  child: Center(child: Text("${position+1}")),
                ),
              ),
            );
      }),
    );
  }
}
