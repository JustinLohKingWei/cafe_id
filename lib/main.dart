import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: CafeID()
));

class CafeID extends StatefulWidget {
  @override
  _CafeIDState createState() => _CafeIDState();
}

class _CafeIDState extends State<CafeID> {
  int numOfVisits = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Meet the sheep squad!', style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          letterSpacing: 3.0,
          color : Colors.black,
          fontFamily: 'IndieFlower',
        ),
        ),
        centerTitle : true,
        backgroundColor: Colors.white,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
                numOfVisits++;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.amberAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/buffAssSheep.png'),
              radius: 40.0,
            ),
            SizedBox(
                height: 20.0
            ),
            Container(
              child: Text('Name',style: TextStyle(
        fontSize: 15.0,
          letterSpacing: 3.0,
          color : Colors.black,
          fontFamily: 'IndieFlower',
        ),
                  ),
            ),
            Container(
              child: Text('SHAUN MCLAMB',style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 5.0,
                color : Colors.black,
                fontFamily: 'IndieFlower',
              ),
              ),
            ),
            SizedBox(
              height: 20.0
            ),
            Container(
              child: Text('Times Visited :',style: TextStyle(
                fontSize: 15.0,
                letterSpacing: 3.0,
                color : Colors.black,
                fontFamily: 'IndieFlower',
              ),
              ),
            ),
            Container(
              child: Text('$numOfVisits',style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 3.0,
                color : Colors.black,
                fontFamily: 'IndieFlower',
              ),
              ),
            ),
            SizedBox(
                height: 20.0
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.home,
                    color: Colors.deepOrange,
                  ),
                  Text(' 123, Wooly Avenue, SheepWood',style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0,
                    color : Colors.black,
                    fontFamily: 'IndieFlower',
                  ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
