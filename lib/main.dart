import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        body: const MyStatelessWidget(),
      ),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    int index=1;
    final PageController controller = PageController();
    return PageView(
      pageSnapping: true,
      /// [PageView.scrollDirection] defaults to [Axis.horizontal].
      /// Use [Axis.vertical] to scroll vertically.
      controller: controller,
      children:  <Widget>[
       Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           Flexible(
             flex: 1,
             child: Container(
             ),
           ),
           Image(image: AssetImage("assets/soda1.png")),
           SizedBox(height:36,),
           Text('Copyright 2023 SODA.  All rights reserved.',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),),
      Flexible(
        flex: 1,
        child: Container(
        ),
      ),
          _pageIndicator(index++),

         ],
       ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Container(
              ),
            ),
            Image(image: AssetImage("assets/soda2.png")),
            SizedBox(height:36,),
            Flexible(
              flex: 1,
              child: Container(
              ),
            ),
            _pageIndicator(index++)

          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Flexible(
              flex: 1,
              child: Container(
              ),
            ),
            Image(image: AssetImage("assets/soda3.png")),
            SizedBox(height:36,),
            Flexible(
              flex: 1,
              child: Container(
              ),
            ),
           _pageIndicator(index++)

          ],
        ),
      ],

    );
  }

  Widget _pageIndicator(int index){
      return  Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
      for(int x = 1; x<=3;x++)...[
        Padding(
          padding: x==1||x==3 ? EdgeInsets.only(left: 8,right:8):EdgeInsets.all(0),
          child: CircleAvatar(
            radius: 6,
            backgroundColor: x==index ? Color(0xFF182949) :Color(0xFFD8D8D8),
          ),
        ),
      ],
  ],
  ),
  );
  }

  }

