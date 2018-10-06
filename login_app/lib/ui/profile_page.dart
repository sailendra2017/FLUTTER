import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_app/style/theme.dart' as Theme;
import 'package:login_app/utils/bubble_indication_painter.dart';

class UserProfile extends StatefulWidget {



  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  Color left = Colors.black;
  Color right = Colors.white;
  PageController _pageController;

  //first part; post details
  final _postDetails = Center(
    child: new Container(
      child: Column(
        children: <Widget>[
          Text("12",
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0,),
          Text("Posts",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
          ),

        ],
      ),
    ),
  );

  //second part; followers details
  final _followersDetails = Center(
    child: new Container(
      child: Column(
        children: <Widget>[
          Text("23",
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0,),
          Text("Followers",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
          ),

        ],
      ),
    ),
  );

  //second part; followers details
  final _followingDetails = Center(
    child: new Container(
      child: Column(
        children: <Widget>[
          Text("56",
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0,),
          Text("Followings",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
          ),

        ],
      ),
    ),
  );

  //fourth part; users details
  final _usersDetails = Container(
      child: Column(
        children: <Widget>[
          Text("Scott Colon",
            style: TextStyle(
              fontSize: 36.0,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(height: 10.0,),
          Text("Photographer",
            style: TextStyle(
                fontSize: 18.0,
                color: Colors.white,
                fontWeight: FontWeight.w300
            ),
          ),

        ],
      ),
    );

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Color(0xFFfbab66),
      ),
      body:  SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [
                  Theme.Colors.loginGradientStart1,
                  Theme.Colors.loginGradientEnd2
                ],
                begin: const FractionalOffset(0.0, 0.0),
                end: const FractionalOffset(1.0, 1.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: new Image(
                    width: 250.0,
                    height: 191.0,
                    fit: BoxFit.fill,
                    image: new AssetImage('assets/img/login_logo.png'),

                ),


              ),
              Container(
               color: Colors.red,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: new BoxDecoration(
                    gradient: new LinearGradient(
                        colors: [
                          Theme.Colors.loginGradientStart,
                          Theme.Colors.loginGradientEnd
                        ],
                        begin: const FractionalOffset(0.0, 0.0),
                        end: const FractionalOffset(1.0, 1.0),
                        stops: [0.0, 1.0],
                        tileMode: TileMode.clamp),
                  ),
                  child: Stack(
                    alignment: Alignment.topLeft,

                    children: <Widget>[

                      Container(
                        width: MediaQuery.of(context).size.width*0.30,
                        //height: MediaQuery.of(context).size.height,
                        //color: Colors.amber,

                        child: new Column(
                          //mainAxisSize: MainAxisSize.max,
                          //mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(height: 35.0,),
                            _postDetails,
                            SizedBox(height: 35.0,),
                            _followersDetails,
                            SizedBox(height: 30.0,),
                            _followingDetails,
                          ],
                        ),

                      ),


                      Positioned(
                        left: MediaQuery.of(context).size.width*0.30,
                        child: Container(
                          width: MediaQuery.of(context).size.width*0.70,
                          child: Column(

                            children: <Widget>[

                              SizedBox(height: 30.0,),
                              _usersDetails,
                              SizedBox(height: 35.0,),
                              Text('Lorem Ipsum is simply dummy text of printting and type setting industry.Lorem Ipsum is simply dummy text of printting and type setting industry.Lorem Ipsum is simply dummy text of printting and type setting industry..Lorem Ipsum is simply dummy text of printting and type setting industry..Lorem Ipsum is ',
                                  style: TextStyle(fontSize: 16.0, color: Colors.white, ),textAlign: TextAlign.left,),
                            ],
                          ),
                        ),
                      ),


                    ],

                  ),
                ),
              ),

              Expanded(
                flex: 2,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (i) {
                    if (i == 0) {
                      setState(() {
                        right = Colors.white;
                        left = Colors.black;
                      });
                    } else if (i == 1) {
                      setState(() {
                        right = Colors.black;
                        left = Colors.white;
                      });
                    }
                  },
                  children: <Widget>[
                    new ConstrainedBox(
                      constraints: const BoxConstraints.expand(),
                      //child: _buildSignIn(context),
                    ),
                    new ConstrainedBox(
                      constraints: const BoxConstraints.expand(),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ),
      ),

      floatingActionButton: new FloatingActionButton(
        //onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
    );
  }
}


