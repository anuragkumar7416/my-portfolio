import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:portfolio/app_constants.dart';
import 'package:portfolio/presentation/contact/widgets/zoom_buttons.dart';

class MapView extends StatefulWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {


  final LatLng _center =  LatLng(28.6139, 77.2090);



  @override
  Widget build(BuildContext context) {
    double maxWidth = MediaQuery.of(context).size.width;

    return SizedBox(
      width: maxWidth>1360?540:330,
      height: maxWidth>1000?400:300,
      child: FlutterMap(
        options: MapOptions(
          center: _center??LatLng(0, 0),
          zoom: 9.2,
        ),
        nonRotatedChildren: [
          AttributionWidget.defaultWidget(
            source: 'OpenStreetMap contributors',
            onSourceTapped: null,
          ),
          const FlutterMapZoomButtons(
            minZoom: 4,
            maxZoom: 19,
            mini: true,
            padding: 10,
            alignment: Alignment.bottomRight,
          ),
        ],
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(28.6139, 77.2090),
                width: 40,
                height: 40,
                builder: (context) => Image.asset(ImagePaths.redMarker),
              ),
            ],
          ),

        ],
      ),


    );
  }
}
