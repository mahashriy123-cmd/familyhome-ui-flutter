import 'package:flutter/material.dart';
import 'users.dart';

class Room {
  final String club;
  final String name;
  final List<user> speakers;
  final List<user> fllowedBySpeakers;
  final List<user> others;

  const Room({
    required this.club,
    required this.name,
     this.speakers =const [],
     this.fllowedBySpeakers=const [],
     this.others=const [],
  });
}