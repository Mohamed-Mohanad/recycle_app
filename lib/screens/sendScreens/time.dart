import 'package:flutter/material.dart';

class Time {
  const Time(this.name);
  final String name;
}

class Day {
  const Day(this.name);
  final String name;
}

List<Time> times = <Time>[
  const Time('7:00 Am'),
  const Time('9:00 AM'),
  const Time('11:00 Am'),
  const Time('1:00 Pm'),
  const Time('3:00 Pm'),
  const Time('5:00 Pm'),
  const Time('7:00 Pm'),
];

List<Day> day = <Day>[
  const Day('Sunday'),
  const Day('Monday'),
  const Day('Tuesday'),
  const Day('Wednesday'),
  const Day('Thursday'),
];

