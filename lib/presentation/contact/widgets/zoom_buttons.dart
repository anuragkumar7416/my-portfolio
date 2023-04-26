import 'package:flutter/material.dart';
import 'package:flutter_map/plugin_api.dart';

class FlutterMapZoomButtons extends StatelessWidget {
  final double minZoom;
  final double maxZoom;
  final bool mini;
  final double padding;
  final Alignment alignment;
  final Color? zoomInColor;
  final Color? zoomInColorIcon;
  final Color? zoomOutColor;
  final Color? zoomOutColorIcon;
  final IconData zoomInIcon;
  final IconData zoomOutIcon;

  final FitBoundsOptions options =
  const FitBoundsOptions(padding: EdgeInsets.all(12));

  const FlutterMapZoomButtons({
    super.key,
    this.minZoom = 1,
    this.maxZoom = 18,
    this.mini = true,
    this.padding = 2.0,
    this.alignment = Alignment.topRight,
    this.zoomInColor,
    this.zoomInColorIcon,
    this.zoomInIcon = Icons.zoom_in,
    this.zoomOutColor,
    this.zoomOutColorIcon,
    this.zoomOutIcon = Icons.zoom_out,
  });

  @override
  Widget build(BuildContext context) {
    final map = FlutterMapState.maybeOf(context);
    return Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Padding(
            padding:
            EdgeInsets.only(left: padding, top: padding, right: padding),
            child: Container(
              height: 50,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius:  BorderRadius.only(topLeft: Radius.circular(8),topRight:Radius.circular(8) )
              ),
              child: FloatingActionButton(
                heroTag: 'zoomInButton',
                mini: mini,
                shape: const BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(2),topRight:Radius.circular(2) )
                ),
                backgroundColor: Colors.white,
                onPressed: () {
                  final bounds = map!.bounds;
                  final centerZoom = map.getBoundsCenterZoom(bounds, options);
                  var zoom = centerZoom.zoom + 1;
                  if (zoom > maxZoom) {
                    zoom = maxZoom;
                  }
                  map.move(centerZoom.center, zoom,
                      source: MapEventSource.custom);
                },
                child: const Icon(Icons.add,
                    color: Colors.black),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Container(
              height: 50,
              width: 30,
              decoration: const BoxDecoration(
                  borderRadius:  BorderRadius.only(topLeft: Radius.circular(8),topRight:Radius.circular(8) )
              ),
              child: FloatingActionButton(
                heroTag: 'zoomOutButton',
                mini: mini,
                shape:  const BeveledRectangleBorder(
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(2),bottomRight:Radius.circular(2) )
                ),
                backgroundColor: Colors.white,
                onPressed: () {
                  final bounds = map!.bounds;
                  final centerZoom = map.getBoundsCenterZoom(bounds, options);
                  var zoom = centerZoom.zoom - 1;
                  if (zoom < minZoom) {
                    zoom = minZoom;
                  }
                  map.move(centerZoom.center, zoom,
                      source: MapEventSource.custom);
                },
                child: const Icon(Icons.remove,
                    color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    );
  }
}