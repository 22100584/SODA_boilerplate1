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
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(

            icon: Icon(Icons.favorite),
            label: 'Favorites',


          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',

          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Information',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notification',

          ),

        ],
        currentIndex: _selectedIndex,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xFF4B6EB1),
        unselectedItemColor: Color(0xFF979797),
        onTap: _onItemTapped,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
