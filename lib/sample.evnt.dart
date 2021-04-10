import 'package:cell_calendar/cell_calendar.dart';
import 'package:flutter/material.dart';

List<CalendarEvent> sampleEvents() {
  final today = DateTime.now();
  final sampleEvents = [
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -42)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -30)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -27)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -17))),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -17))),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -17)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: -7)),
        eventBackgroundColor: Colors.pink),
    CalendarEvent(
        eventName: "ว่าง", eventDate: today.add(Duration(days: -7))),
    CalendarEvent(eventName: "Task Deadline", eventDate: today),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 3)),
        eventBackgroundColor: Colors.pink),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 6)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 9))),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 11)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 4)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 13))),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 21))),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 30)),
        eventBackgroundColor: Colors.indigoAccent),
    CalendarEvent(
        eventName: "ว่าง",
        eventDate: today.add(Duration(days: 42)),
        eventBackgroundColor: Colors.indigoAccent),
  ];
  return sampleEvents;
}