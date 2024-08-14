// // ignore_for_file: non_constant_identifier_names, avoid_function_literals_in_foreach_calls, use_full_hex_values_for_flutter_colors, prefer_const_constructors

// import 'dart:convert';
// import 'dart:ui';

// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;

// Future getPolyLine(lat, long, destlat, destlong) async {
//   List<LatLng> polylineco = [];
//   PolylinePoints polylinePoints = PolylinePoints();
//   Set<Polyline> polylineSet = {};

//   // String url = link;

//   // var response = await http.post(Uri.parse(url));
//   // var responsebody = jsonDecode(response.body);
//   var point = responsebody['routes'][0]['overview_polyline']['points'];
//   List<PointLatLng> result = polylinePoints.decodePolyline(point);

//   if (result.isNotEmpty) {
//     result.forEach((PointLatLng pointLatLng) {
//       polylineco.add(LatLng(pointLatLng.latitude, pointLatLng.longitude));
//     });
//   }

//   Polyline polyline = Polyline(
//       polylineId: PolylineId("alaa"),
//       color: Color(0xff398db),
//       width: 5,
//       points: polylineco);
//   polylineSet.add(polyline);
//   return polylineSet;
// }
