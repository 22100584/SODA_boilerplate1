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
  PersonSex? _character = PersonSex.Male;
  bool isCheckedDesigner =false;
  bool isCheckedDeveloper =false;
  DateTime? _selectedDate;

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2001),
        lastDate: DateTime(2030))
        .then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        // using state so that the UI will be rerendered when date is picked
        _selectedDate = pickedDate;
      });
    });
  }

  @override
  Widget build(BuildContext context) {

    final MaterialStateProperty<Color?> trackColor =
    MaterialStateProperty.resolveWith<Color?>(
          (Set<MaterialState> states) {
        // Track color when the switch is selected.
        if (states.contains(MaterialState.selected)) {
          return Color(0xFF4B6EB1);
        }
        return Color(0xFF979797);
      },
    );

    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.only(bottom: 50),
        child: FloatingActionButton(
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => AlertDialog(
              title: Text('+ 버튼을 누르셨습니다.',style: GoogleFonts.roboto(fontSize: 16,fontWeight: FontWeight.w400,color: Color(0xFF99000000)),),

              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context, 'OK'),
                  child: Text('확인',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color:Color(0xFF182949)),),
                ),
              ],
            ),
          ),
          backgroundColor: Color(0xFF182949),
          child: const Icon(Icons.add,color: Colors.white,),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      appBar: AppBar(
        backgroundColor: Color(0xFF182949),
        title: Text('SODA',style: GoogleFonts.roboto(fontSize: 20,fontWeight: FontWeight.w500),),
        actions: [
          Container(
            padding: EdgeInsets.all(13),
            child: Switch(
              value: light,
              trackColor: trackColor,
              thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
              onChanged: (bool value) {
                setState(() {
                  light = value;
                  if(value==true){ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: const Duration(milliseconds: 2000),
                      behavior: SnackBarBehavior.values[0]
,                      content: Text('switch를 ON 하였습니다.',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.white,)),
                      action: SnackBarAction(
                        textColor: Color(0xFFF99999),
                        label: 'OK',

                      onPressed: () {},
                      ),
                    ),
                  );}
                });
              },
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
      body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(

                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Row(
                      children: [
                        Radio<PersonSex>(
                          value: PersonSex.Male,
                          groupValue: _character,
                          onChanged: (PersonSex? value) {
                            setState(() {
                              _character = value;
                            });
                          },
                        ),
                        Text('Male',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Radio<PersonSex>(
                        value: PersonSex.Female,
                        groupValue: _character,
                        onChanged: (PersonSex? value) {
                          setState(() {
                            _character = value;
                          });
                        },
                      ),
                      Text('Female',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 17),
                    child: Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          value: isCheckedDesigner,
                          onChanged: (bool? value) {
                            setState(() {
                              isCheckedDesigner = value!;
                            });
                          },
                        ),
                        Text('Designer',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black)),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        value: isCheckedDeveloper,
                        onChanged: (bool? value) {
                          setState(() {
                            isCheckedDeveloper = value!;
                          });
                        },
                      ),
                      Text('Developer',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black)),
                    ],
                  ),
                ],
              ),
            ),

            Expanded(
                child:Padding(
              padding : EdgeInsets.fromLTRB(5, 10, 10, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 13, 25,0 ),
                    child: Text('버튼을 눌러 날짜를 선택해주세요',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.black)),
                  ),

                  OutlinedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0))),
                      ),
                      onPressed: _presentDatePicker,
                      child:Text('SELECT DATE',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF182949)),),
                  ),

                ],
              ),
            ),
            ),

            Divider(
              color: Color(0xFF14212121),
              thickness: 1,
              indent: 13,
              endIndent: 13,
            ),
            Padding(
              padding : EdgeInsets.fromLTRB(13, 5, 13, 13),
              child: Text('Copyright 2022 SODA All rights reserved.',style: GoogleFonts.roboto(fontSize: 14,fontWeight: FontWeight.w500,color: Color(0xFF99000000)),),
            ),


          ],
        ),

      );

  }
}
