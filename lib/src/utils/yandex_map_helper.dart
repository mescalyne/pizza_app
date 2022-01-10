import 'package:flutter/services.dart';
import 'package:toto_mobile/src/resources/svg.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

extension CreatePlacemarks on YandexMapController {
  void createPlacemarks(List<Point> pointsToPlacemark,
      [Function? onPlacemarkTap]) async {
        for(int i = 0; i < pointsToPlacemark.length; i++){
        ByteData data = await rootBundle.load(mapPin);
        this.addPlacemark(
          Placemark(
            onTap: (placemark, point) async {
              this.move(
                point: Point(
                  latitude: point.latitude - 0.003,
                  longitude: point.longitude,
                ),
                animation: MapAnimation(
                  duration: 0.5,
                  smooth: true,
                ),
              );
              if (onPlacemarkTap != null) {
                onPlacemarkTap(i);
              }
            },
            style: PlacemarkStyle(
              scale: 1,
              opacity: 1,
              rawImageData: data.buffer.asUint8List(),
            ),
            point: Point(
              latitude: pointsToPlacemark[i].latitude,
              longitude: pointsToPlacemark[i].longitude,
            ),
          ),
        );
        }
    
  }
}
