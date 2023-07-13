import 'package:collegevidya/models/Courses%20Model.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'dart:io';
import 'package:collegevidya/Widgets/homeslider.dart';
import 'package:collegevidya/models/University_list model.dart';
import 'package:http/http.dart' as http;


// UNIVERSITY LOGO API
Future<List<dynamic>> Universitylogo() async {
  final response = await http.get(Uri.parse('https://admin.collegevidya.com/home_page_universities/'));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data['data'];
  } else {
    throw Exception('Failed to fetch data');
  }
}

Future<List<dynamic>> sliceData1() async {
  final data = await Universitylogo();
  final slicedData = data.sublist(0, 10); // Slicing the first 5 elements
  return slicedData;
}

Future<List<dynamic>> sliceData2() async {
  final data = await Universitylogo();
  final slicedData = data.sublist(10, 20); // Slicing the first 5 elements
  return slicedData;
}

Future<List<dynamic>> sliceData3() async {
  final data = await Universitylogo();
  final slicedData = data.sublist(20, 30); // Slicing the first 5 elements
  return slicedData;
}

// COLLEGE VIDYA EXPERTS API
Future<List<dynamic>> expertsdata() async {
  final response = await http.get(Uri.parse('https://partner.cvcounselor.com:9001/counsellors/all'));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    // print(data);
    return data;
  } else {
    throw Exception('Failed to fetch data');
  }
}

//COURSES API
Future<List<dynamic>> fetchdomaindata() async {
  final response = await http.get(Uri.parse('https://admin.collegevidya.com/menu/'));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    throw Exception('Failed to fetch data');
  }
}



//BANNERS API
Future<List<dynamic>> fetchbanners() async {
  final response = await http.get(Uri.parse('https://admin.collegevidya.com/getbanner/'));
  if (response.statusCode == 200) {
    final data = json.decode(response.body);
    return data;
  } else {
    throw Exception('Failed to fetch data');
  }
}

Future<List<dynamic>> BannersData() async {
  final data = await fetchbanners();
  final bannersdata = data.sublist(5, 9); // Slicing the first 5 elements
  return bannersdata;
}


// //STATE API




