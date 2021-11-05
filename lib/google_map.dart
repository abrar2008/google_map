import 'package:flutter/material.dart'; 
import 'package:google_maps_flutter/google_maps_flutter.dart';
class GoogleMaplo extends StatefulWidget {
  const GoogleMaplo({ Key? key }) : super(key: key);

  @override
  _GoogleMaploState createState() => _GoogleMaploState();
}

class _GoogleMaploState extends State<GoogleMaplo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map Live Tracking "), ),
       
       body:Column(children: [
        Expanded(child: GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: CameraPosition(target: LatLng(28.7041, 77.1025),
              zoom: 18
              ),
              onMapCreated: (GoogleMapController controller) {
                
              },
            ),
          )
       ],),



      );
  }
}