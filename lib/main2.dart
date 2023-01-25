import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = <Widget>[
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),

    ),
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),

    ),
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),

    ),
    Text(
      'Copyright 2022 SODA  All rights reserved.',
      style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),
  ),
    ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }






  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF4B6EB1),
        title: Text('SODA',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
        actions: [
          Container(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:[
                IconButton(
                    icon: const Icon(Icons.notifications),
                    color: Colors.white,
                    onPressed: (){},
                  ),

                IconButton(
                    icon: const Icon(Icons.share),
                    color: Colors.white,
                    onPressed: (){},
                  ),
                IconButton(
                    icon: const Icon(Icons.search),
                    color: Colors.white,
                    onPressed: (){},
                  ),


              ]
            ),
          )

        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF182949),
              ),
              child:
                  Align(
                    alignment: Alignment(-1,-0.5),
                      child: Text('SODA',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.white),))
              ,
              ),
            ListTile(
              leading: Icon(Icons.favorite,color: Color(0xFF7B7A7A),),
              title: Text('Icon : favorite',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF7B7A7A),)),
            ),

          ],
        ),
      ),
      body: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(13, 13, 13, 5),
              child: Card(
                elevation: 0,
                shape: BeveledRectangleBorder(
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 0.5,
                    )
                ),
                  child: ListTile(
                    leading: Icon(Icons.airplay_outlined),
                    title: Text('This is List tile',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500,)),
                    subtitle: Text('List tile 1',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w400)),
                  ),
                ),
              ),
            Padding(
              padding: EdgeInsets.fromLTRB(13, 5, 13, 5),
              child: Card(
                elevation: 0,
                shape: BeveledRectangleBorder(
                    side: BorderSide(
                      color: Colors.black.withOpacity(0.1),
                      width: 0.5,
                    )
                ),
                child: ListTile(
                  leading: Icon(Icons.airplay_outlined),
                  title: Text('This is List tile',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
                  subtitle: Text('List tile 1',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(13, 5, 13, 5),
              child: Card(
                elevation: 0,
                shape: BeveledRectangleBorder(
                  side: BorderSide(
                    color: Colors.black.withOpacity(0.1),
                    width: 0.5,
                  )
                ),
                child: ListTile(
                  leading: Icon(Icons.airplay_outlined),
                  title: Text('This is List tile',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
                  subtitle: Text('List tile 1',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w400)),
                ),
              ),
            ),
            Expanded(
                child:Padding(
              padding : EdgeInsets.fromLTRB(13, 5, 13, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextButton(
                      onPressed: (){},
                      child:Text('TEXT BUTTON',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF182949)),)
                  ),
                ],
              ),
            ),
            ),
            Padding(
              padding : EdgeInsets.fromLTRB(13, 5, 13, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                    Center(
                      child: Ink(
                        decoration: const ShapeDecoration(
                          color: Color(0xFF182949),
                          shape: CircleBorder(),
                        ),
                        child: IconButton(
                          icon: const Icon(Icons.settings),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                      ),
                  ),
                ],
              ),
            ),
            Padding(
              padding : EdgeInsets.fromLTRB(13, 5, 13, 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  OutlinedButton(
                    style:OutlinedButton.styleFrom(
                      backgroundColor: Color(0xFFFFE8E8),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                    ),
                    onPressed :(){},
                    child:Text('Outlined Button',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF182949)),),

                  )
                ],
              ),
            ),


          ],
        ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Divider(
            color: Color(0xFF14212121),
            thickness: 1,
            indent: 13,
            endIndent: 13,
          ),
          Padding(
            padding : EdgeInsets.fromLTRB(13, 5, 13, 13),
            child: Center(
              child:Text('Copyright 2022 SODA All rights reserved.',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF182949),
        child: const Icon(Icons.add,color: Colors.white,),
      ),

      );

  }
}
