import 'package:cloud_firestore/cloud_firestore.dart';

class ChatUserModel {
  String? id;
  String? name;
  String? status;
  DateTime? createdAt;

  ChatUserModel({
    this.id,
    this.name,
    this.status,
    this.createdAt,
  });

  ChatUserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    createdAt = json['createdAt'] != null
        ? (json['createdAt'] as Timestamp).toDate()
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['status'] = status;
    if (createdAt != null) {
      data['createdAt'] = createdAt;
    }
    return data;
  }
}
