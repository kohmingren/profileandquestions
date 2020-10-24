import 'package:flutter/material.dart';
import 'package:flutter_app_questiontest/questionClass.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}


class _ChooseLocationState extends State<ChooseLocation> {

  List<Questions> questions = [
    Questions(username:'Ming ren', textQuestion: 'How to do this question?', upVote: false, commentCount: 120, ratingCount: 110),
    Questions(username:'Yi Jie', textQuestion: 'How do I code?', upVote: false, commentCount: 80, ratingCount: 89),
    Questions(username:'YiHo', textQuestion: 'Cannot find Intern', upVote: false, commentCount: 100, ratingCount: 56)
  ];

  Widget questionTemplate(question){
    var iconTrue = Icon(
      Icons.favorite_border,
      color: Colors.red,
      size: 24.0,
    );
    var iconFalse = Icon(
      Icons.favorite,
      color: Colors.red,
      size: 24.0,
    );

    _iconSelect({upVote:false}) {
      bool checkUpVote = question.upVote;
      if(checkUpVote) {
        return iconFalse;
      } else {
        return iconTrue;
      }
    }

    return Card(
        margin: EdgeInsets.fromLTRB(16.0,16.0,16.0,0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Text(
                    question.textQuestion,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.black,
                    )
                ),
                SizedBox(height: 40.0),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: (){
                        setState(() {
                          if(question.upVote) {
                            question.upVote = false;
                          } else {
                            question.upVote = true;
                          }
                        });
                      },
                      icon: _iconSelect(upVote:question.upVote),
                    ),
                    Text(
                      question.ratingCount.toString(),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.comment,
                      color: Colors.black,
                      size: 24.0
                    ),
                    Text(question.commentCount.toString()),
                    SizedBox(width: 10),
                    Icon(
                      Icons.share,
                    ),
                    SizedBox(width: 100),
                    Text(
                      question.username,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.black
                      ),
                    )
                  ]

                )
              ]
          ),
        )
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('Choose a location'),
          centerTitle: true,
        ),
        body: Column(
          children: questions.map((question) => questionTemplate(question)).toList()
        )
    );
  }
}