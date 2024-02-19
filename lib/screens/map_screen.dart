import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
//https://pub.dev/packages/google_maps_flutter

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // ignore: unused_field
  GoogleMapController? _controller;
  final Set<Marker> _markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tu Ubicación'),
      ),
      body: GoogleMap(
        onMapCreated: (controller) {
          setState(() {
            _controller = controller;
          });
        },
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12,
        ),
        markers: _markers,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Agrega la lógica para abrir la pantalla de agregar dirección en Google Maps
          // Puedes utilizar Navigator para navegar a otra pantalla
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}