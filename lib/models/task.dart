// To parse this JSON data, do
//
//     final taskModel = taskModelFromJson(jsonString);

import 'dart:convert';

class TaskModel {
  final String? title;
  final String? description;
  final String? image;
  final int? createdAt;
  final bool? isCompleted;
  final String? docId;

  TaskModel({
    this.title,
    this.description,
    this.image,
    this.createdAt,
    this.isCompleted,
    this.docId,
  });

  factory TaskModel.fromJson(Map<String, dynamic> json) =>
      TaskModel(
        title: json["title"],
        description: json["description"],
        image: json["image"],
        createdAt: json["createdAt"],
        isCompleted: json["isCompleted"],
        docId: json["docID"],
      );

  Map<String, dynamic> toJson() =>
      {
        "title": title,
        "description": description,
        "image": image,
        "createdAt": createdAt,
        "isCompleted": isCompleted,
        "docID": docId,
      };
}
