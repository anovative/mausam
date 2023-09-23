import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String findCountry(String? countryCode) {
  // return a country  name from a list with countryCode
  List<Map<String, String>> countries = [
    {'code': 'US', 'name': 'United States'},
    {'code': 'CA', 'name': 'Canada'},
    {'code': 'MX', 'name': 'Mexico'},
    {'code': 'GB', 'name': 'United Kingdom'},
    {'code': 'FR', 'name': 'France'},
    {'code': 'DE', 'name': 'Germany'},
    {'code': 'IT', 'name': 'Italy'},
    {'code': 'ES', 'name': 'Spain'},
    {'code': 'JP', 'name': 'Japan'},
    {'code': 'AU', 'name': 'Australia'},
    {'code': 'CN', 'name': 'China'},
  ];

  for (var country in countries) {
    if (country['code'] == countryCode) {
      return country['name']!;
    }
  }

  return '';
}
