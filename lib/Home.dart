import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex =0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
               Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Align(
                    alignment: Alignment.topRight,
                    child: Text('Logout' ,style: TextStyle(color: Colors.orangeAccent, fontSize: 25, fontWeight: FontWeight.bold),)),
               ),
              Align(
                  alignment: Alignment.topLeft,
                  heightFactor: 1.0,
                  child: Text('Jack' ,style: TextStyle(color: Colors.blue.shade900, fontSize: 30, fontWeight: FontWeight.bold),)),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text('shephard' ,style: TextStyle(color: Colors.blue.shade900, fontSize: 30, fontWeight: FontWeight.bold),)),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical:60.0, horizontal:0.0),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Container(

                            child:Icon(FontAwesomeIcons.userAlt, color:Colors.orangeAccent.shade100, size: 40,),
                            color: Colors.white,
                          ),
                        ),

                        Expanded(
                          child: Container(
                            child:Icon(FontAwesomeIcons.headphonesAlt, color:Colors.green.shade300, size: 40,),
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        Text('Personal',style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.w400,fontSize: 18),),

                        Text('Support',style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.w400,fontSize: 18),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        Text('info',style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.w400,fontSize: 18),),

                        Text(' '),
                      ],
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Expanded(
                          child: Container(
                            child:Icon(FontAwesomeIcons.tachometerAlt, color:Colors.redAccent.shade100, size: 40,),
                            color: Colors.white,
                          ),
                        ),

                        Expanded(
                          child: Container(
                            child:Icon(FontAwesomeIcons.lock, color:Colors.blue.shade700, size: 40,),
                            color: Colors.white,
                          ),
                        ),

                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        Text('Weight',style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.w400,fontSize: 18),),

                        Text('Account',style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.w400,fontSize: 18),),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[

                        Text('  158lb ',style: TextStyle(color: Colors.blue.shade300, fontWeight: FontWeight.w400),),

                        Text('      Settings',style: TextStyle(color: Colors.blue.shade900, fontWeight: FontWeight.w400,fontSize: 18),),
                      ],
                    ),
                  ],

              ),
               ),
            ],
          ),


        ),
      ),
      bottomNavigationBar: BottomNavigationBar(// this will be set when a new tab is tapped
        currentIndex: _currentindex,
        type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.blue.shade900,
        unselectedItemColor: Colors.white,



        items:[
          BottomNavigationBarItem(
            icon: new Icon(FontAwesomeIcons.flag, color:Colors.grey.shade500),
           title: new Text('notification',style:TextStyle(color:Colors.white,fontSize: 15.0), ),

          ),
          BottomNavigationBarItem(
            icon: new Icon(FontAwesomeIcons.capsules, color:Colors.grey.shade500),

           title: new Text('Messages',style:TextStyle(color:Colors.white,fontSize: 15.0),),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.lightbulb, color:Colors.grey.shade500),
              title: Text('Profile',style:TextStyle(color:Colors.white,fontSize: 15.0),),
          ),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user, color:Colors.grey.shade500),
              title: Text(' Your Profile',style:TextStyle(color:Colors.white,fontSize: 15.0),),
          )
        ],
        onTap: (index){
          setState(() {
            _currentindex =index;
            color: Colors.blue.shade900;
          });
        },
      ),
    );
  }
}
