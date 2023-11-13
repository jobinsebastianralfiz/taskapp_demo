import 'package:flutter/foundation.dart';

class TaskModel {


 final String?title;
 final String?content;
 final int?status;
 final DateTime?createdAt;

  TaskModel({this.title,this.content,this.status,this.createdAt});


  toJson(Map<String,dynamic>data){

    return {

      "title":data['title'],
      'content':data['content'],
      'status':data['status'],
      'createdAt':data['createdAt']
    };
  }


  factory TaskModel.fromJson(Map<String,dynamic> json){


    return TaskModel(

      title: json['title'],
      content: json['content'],
      status: json['status'],
      createdAt: json['createdAt']
    );
  }






}