import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapDemo extends StatefulWidget {
  const MapDemo({Key? key}) : super(key: key);

  @override
  _MapDemoState createState() => _MapDemoState();
}

class _MapDemoState extends State<MapDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      appBar: AppBar(title: Text('Map Demo')),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(20.5937, 78.9629),
          zoom: 5,
          // this rotate our map to 90 degree
          //bearing: 90,

          tilt: 90,
        ),
        //
        mapType: MapType.normal,

        //mapType: MapType.satellite,

        //mapType: MapType.hybrid,

        // this does  not show +- on map
        zoomControlsEnabled: false,

        // this will show campas pointing to north
        compassEnabled: true,
      ),
    );
  }
}
