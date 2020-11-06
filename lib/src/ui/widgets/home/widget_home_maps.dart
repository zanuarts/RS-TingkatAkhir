import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeMaps extends StatefulWidget {
  @override
  _HomeMapsState createState() => _HomeMapsState();
}

class _HomeMapsState extends State<HomeMaps> {
  final Set<Marker> _markers = {};
  LatLng _currentPosition = LatLng(3.595196, 98.672226);
  
  @override
  void initState() {
    _markers.add(
      Marker(
        markerId: MarkerId("3.595196, 98.672226"),
        position: _currentPosition,
        icon: BitmapDescriptor.defaultMarker,
      ),
    );
    super.initState();
  }  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 0, 20, 10),
      child: Container(
        height: 150,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: GoogleMap(
          mapType: MapType.normal,
        initialCameraPosition: CameraPosition(
          target: _currentPosition,
          zoom: 14.0,
        ),
        markers: _markers,
        onTap: (position) {
          setState(() {
            _markers.add(
              Marker(
                markerId:
                    MarkerId("${position.latitude}, ${position.longitude}"),
                icon: BitmapDescriptor.defaultMarker,
                position: position,
              ),
            );
          });
        },
        ),
        ),
      ),
    );         
  }
}