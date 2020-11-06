import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMaps extends StatefulWidget {
  @override
  _HomeMapsState createState() => _HomeMapsState();
}

class _HomeMapsState extends State<HomeMaps> {
  double long;
  double lat;

  // GOOGLE MAPS
  final Set<Marker> _markers = {};
  GoogleMapController mapController;
  LatLng _center = LatLng(-6.897980, 107.619328); // bandung
  
  BitmapDescriptor myIcon;
  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("-6.897980, 107.619328"),
        position: _center,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
}
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(10)
        ),
        child: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 14.0,
          ),
          markers: _markers,
        ),
      ),
    );         
  }
}