
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:login/widget/backgroundImage.dart';
import 'package:login/widget/widgets.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  Set<Marker> _markers = {};
  late BitmapDescriptor mapMarker;

  @override
  void initState(){
    super.initState();
    setCustomMarker();
  }

  void setCustomMarker()async{
    mapMarker = await BitmapDescriptor.fromAssetImage(ImageConfiguration(),'assets/cowpin.png');
  }

  void _onMapCreate(GoogleMapController controller) {
    setState(() {
      _markers.add(Marker(
        markerId: MarkerId('id-1'),
        position: LatLng(17.4554, 78.1312),
        icon: mapMarker,
        infoWindow: InfoWindow(title: "Rathod's Farm",snippet: "Farm where your Animal's are taken care with Love")
      ),);
    },);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.teal[300],
            elevation: 0,
            titleSpacing: 0,
            title: Padding(
              padding: const EdgeInsets.all(59),
              child: Text(
                "Crowd Farming",
                style: kBodyText,
                textScaleFactor: 1,
              ),
            ),
          ),
          body: GoogleMap(
            onMapCreated: _onMapCreate,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(17.4554, 78.1312),
              zoom: 15,
            ),
          ),
        ),
      ],
    );
  }
}
