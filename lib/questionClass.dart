import 'package:flutter/material.dart';

class Questions {

  String username;
  String textQuestion;
  bool upVote = false;
  int commentCount;
  int ratingCount;

  Questions({ this.username, this.textQuestion, this.upVote, this.commentCount, this.ratingCount});

}