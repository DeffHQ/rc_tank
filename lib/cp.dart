import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'CamPage.dart';

class cp extends StatefulWidget {
  const cp({Key? key}) : super(key: key);

  @override
  State<cp> createState() => _cpState();
}

class _cpState extends State<cp> {
  String myvariable = 'Off';
  @override
  Widget build(BuildContext context) {
    return Scaffold( appBar: AppBar(backgroundColor: Color(0xFFFF8A80),title: Text('Control Page'),centerTitle: true,),

      backgroundColor: const Color(0xFFFFEBEE),
      body: Center(
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(margin: EdgeInsets.symmetric(vertical: 20),
              child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 20),
                    primary: Colors.white,
                    backgroundColor: const Color(0xFFFF5252),

                  ),
                  onPressed: () {
                    if (myvariable == 'Off'){
                      myvariable='On';
                    }else{
                      myvariable = 'Off';
                    }
                   setState(() {

                   });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 0,horizontal: 9),
                    child: Text('LED Is $myvariable'),
                  ),


                ),
            ),
    TextButton(style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
                primary: Colors.white,
                backgroundColor: const Color(0xFFFF5252),

              ),onPressed: (){
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CamPage()),);
    }, child: const Text('Cam Switch')),
          ],



        )
      )
      );
  }
}
