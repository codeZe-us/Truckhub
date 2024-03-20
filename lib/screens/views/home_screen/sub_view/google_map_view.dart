import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:truckhub/screens/constants/colors.dart';
import 'package:truckhub/screens/constants/fontsizes.dart';
import 'package:truckhub/screens/constants/fontweights.dart';
import 'package:truckhub/screens/constants/strings.dart';
import 'package:truckhub/screens/custom_widgets/annotated_region_widget.dart';
import 'package:truckhub/screens/custom_widgets/text_widget.dart';
import 'package:truckhub/screens/custom_widgets/textfield_widget.dart';

class GoogleMapView extends StatefulWidget {
  const GoogleMapView({super.key});

  @override
  State<GoogleMapView> createState() => _GoogleMapViewState();
}

class _GoogleMapViewState extends State<GoogleMapView> {

  late TextEditingController controller;
  static const LatLng nsukkaLatLng = LatLng(6.8561, 7.3903);
  Location locationController = Location();
  LatLng? currentPosition;


  Future<void> getDeviceCurrentLocation() async{
    bool serviceEnabled;
    PermissionStatus permissionStatus;
    
    serviceEnabled = await locationController.serviceEnabled();
    if(serviceEnabled){
      serviceEnabled = await locationController.requestService();
    }
    else{
      return;
    }

    permissionStatus = await locationController.hasPermission();
    if(permissionStatus == PermissionStatus.denied){
      permissionStatus = await locationController.requestPermission();
      if(permissionStatus != PermissionStatus.granted){
        return;
      }
    }

    locationController.onLocationChanged.listen(
      (currentLocation) {
        if(currentLocation.latitude != null && currentLocation.longitude != null){
          setState(() {
            currentPosition = LatLng(
              currentLocation.latitude!,
              currentLocation.longitude!
            );
          });
        }
      }
    );
  }


  @override
  void initState() {
    super.initState();
    controller = TextEditingController();
    getDeviceCurrentLocation();
  }


  @override
  Widget build(BuildContext context) {
    return GenericAnnotatedRegion(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        extendBody: true,
        body: Stack(
          children: [
            const GoogleMap(
              initialCameraPosition: CameraPosition(
                target: nsukkaLatLng,
                zoom: 13
              )
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
              child: Card(
                elevation: 5,
                shadowColor: whiteColor,
                color: whiteColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25)
                ),
                child: GenericTextField(
                  hintText: searchForDriversString,
                  controller: controller,
                  leadingWidget: Padding(
                    padding: const EdgeInsets.only(left: 15, right: 10),
                    child: GestureDetector(
                      onTap: (){},
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GenericText(
                            color: blackColor,
                            fontSize: fontSize3,
                            fontWeight: fontWeight7,
                            text: truckString
                          ),
                          GenericText(
                            color: greenColor,
                            fontSize: fontSize3,
                            fontWeight: fontWeight7,
                            text: hubString
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        )
      )
    );
  }
}