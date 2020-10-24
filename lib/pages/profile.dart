import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Profile'),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/chelsea2012.jpg'),
                    radius: 40.0,
                  ),
                ),
                Divider(
                  height: 60.0,
                  color: Colors.black,
                ),
                Text(
                  'Username',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                  )
                ),
                SizedBox(height: 10.0),

                Text(
                  'Jason',
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  )
                ),
                SizedBox(height: 30.0),
                Text(
                    'Academic Year',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                )
                ),
                SizedBox(height: 10.0),
                Text(
                    'Year 3',
                    style: TextStyle(
                        color: Colors.black,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold
                )
                ),
                SizedBox(height: 30.0),
                Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.grey,
                    ),
                    SizedBox(width: 10.0),
                    Text(
                      'abc@e.ntu.edu.sg',
                      style: TextStyle(
                        color: Colors.black,
                            letterSpacing: 2.0,
                      )
                    )
                  ]
                )
              ]
            )
      )
    );
  }
}
