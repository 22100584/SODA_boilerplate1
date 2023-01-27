import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());
enum PersonSex { Male, Female }



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
  bool light = true;

  bool isCheckedDesigner =false;
  bool isCheckedDeveloper =false;




  @override
  Widget build(BuildContext context) {

    return Scaffold(

      resizeToAvoidBottomInset : false,
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child:Tooltip(
          message: 'Tooltip',
          preferBelow: false,
          textStyle: GoogleFonts.roboto(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
          showDuration: const Duration(seconds: 3),
          child: FloatingActionButton(
            onPressed: (){},
            backgroundColor: Color(0xFF182949),
            child: const Icon(Icons.add,color: Colors.white,),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        backgroundColor: Color(0xFF182949),
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
    ),
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

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0,15,0,15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('DAY 8',style: GoogleFonts.roboto(fontSize: 30,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
              Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(11.0),
              child: ListTile(
                title: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 2, 10),
                  child: Text('Boilerplate 4',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(3,10, 3, 10),
                  child: Text('어느덧 SODA 캠프 8일차가 되었네요!\n여기까지 달려오시느라 수고 많으셨어요 :)\n\n아래 있는 CANCEL과 SUBMIT은 버튼입니다 !!',
                    style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w400,color: Color(0xFF99000000)),),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text('CANCEL',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF4B6EB1)),),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 2),
                TextButton(
                  child: Text('SUBMIT',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF4B6EB1)),),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 5),
              ],
            ),
          ],
        ),
        ),
              Row(
                 mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Wrap(

                    spacing: 10,
                    direction: Axis.horizontal,
                    children: choiceChips(),


                  ),
                ],
              ),

              Expanded(child: SizedBox(),),
              Divider(
                color: Color(0xFF14212121),
                thickness: 1,
                // indent: 13,
                // endIndent: 13,
              ),
              Padding(
                padding : EdgeInsets.fromLTRB(0, 5, 0, 13),
                child: Text('Copyright 2022 SODA All rights reserved.',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),),
              ),
            ],

        ),
      ),
      );

  }
  int? _selectedIndex;
  final List<Data> _choiceChipsList = [
    Data("SODA", Color(0xFF14212121)),
    Data("CAMP",  Color(0xFF14212121)),
    Data("FUN",  Color(0xFF14212121)),
    Data("FLUTTER",  Color(0xFF14212121)),
  ];
  List<Widget> choiceChips() {
    List<Widget> chips = [];
    for (int i = 0; i < _choiceChipsList.length; i++) {
      Widget item = Padding(
        padding: const EdgeInsets.only(left: 0, right: 0),
        child: ChoiceChip(
          label: Text(_choiceChipsList[i].label),
          labelStyle: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: _selectedIndex==i ? Colors.white : Colors.black,),
          backgroundColor: _choiceChipsList[i].color,
          selected: _selectedIndex == i,
          selectedColor: Color(0xFF182949),
          onSelected: (bool value) {
            setState(() {
              _selectedIndex = i;


            });
          },
        ),
      );
      chips.add(item);
    }
    return chips;
  }
}
class Data {
  String label;
  Color color;

  Data(this.label, this.color);
}


