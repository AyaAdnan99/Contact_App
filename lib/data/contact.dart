import 'package:flutter/material.dart';

class Contact {
  String name;
  String email;
  String phoneNumber;
  bool isFavorate;

  Contact(
      {required this.name,
      required this.email,
      required this.phoneNumber,
      this.isFavorate = false});
}
