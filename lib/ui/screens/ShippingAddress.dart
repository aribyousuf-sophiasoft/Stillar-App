import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:flutter/services.dart' show rootBundle;


class shippingAddressScreen extends StatefulWidget {
  _shippingAddressScreen createState() => _shippingAddressScreen();
}

class _shippingAddressScreen extends State<shippingAddressScreen> {
  void initState() {
    rootBundle.loadString('assets/MapStyles/Blue.txt').then((string) {
      _mapStyle = string;
    });

    _getLocation();

    super.initState ( );


  }

  String _mapStyle;
  GoogleMapController mapController;
 static LocationData position;

  var currentLocation;
  final TextEditingController _Address = new TextEditingController();
  _getLocation() async {
    var location = Location();
    location.changeSettings(accuracy: LocationAccuracy.LOW);


    bool hasPermission = await location.hasPermission() && await location.serviceEnabled();
    if (Platform.isAndroid) {
      if (!hasPermission) {
        hasPermission = await location.requestPermission() && await location.requestService();
      }
    }

    if (hasPermission) {
      position = await location.getLocation().catchError(
              (e) => print("Unable to find your position."),
          test: (e) => e is PlatformException
      ).catchError((e) => print("test"));
    }
  }



  Set<Marker> _CreateMarker()
  {
    return <Marker>[
           position==null
              ? Marker(
               markerId: MarkerId("Your Location"),
               position:LatLng(47.116386,  -101.299591),
               draggable: true
           )
      : Marker(
      markerId: MarkerId("Your Location"),
      position:LatLng(position.latitude, position.longitude),
      draggable: true
  ),
    ].toSet();
  }


  @override
  Widget build(BuildContext context) {

    String dropdownValue = 'Address Type';

    // TODO: implement build
    return MaterialApp(
        debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            elevation: 0,

            title: Text(
              "Add Address",
              style: new TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                  fontFamily: 'Poppins'),
            ),
            backgroundColor: Colors.transparent,
            leading: new IconButton(
              icon: new Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.bell,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
                new IconButton(
                    icon: new Icon(
                      FontAwesomeIcons.shoppingCart,
                      color: Colors.black,
                    ),
                    onPressed: () {}),
              ]
          ),
        body:
        Stack(
          children: <Widget>[
            GoogleMap(
              mapType: MapType.normal,
              markers: _CreateMarker(),
              myLocationButtonEnabled: true,
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
                mapController.setMapStyle(_mapStyle);
              },


              initialCameraPosition: CameraPosition(
                target:  position!=null
                    ? LatLng(position.latitude, position.longitude):LatLng(47.116386,  -101.299591),
                zoom: 15.0,
              ),
            ),
             SlidingUpPanel(
               minHeight: 70,
               maxHeight: 370,
               parallaxEnabled: true,
               margin: EdgeInsets.only(left:10.00,right: 10.00),
            panel: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
              SizedBox(height: 12.0,),

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Container(
                     width: 30,
                     height: 3,
                     decoration: BoxDecoration(
                         color: Colors.grey[300],
                         borderRadius: BorderRadius.all(Radius.circular(12.0))
                     ),
                   ),
                 ],
               ),
                SizedBox(height: 3.0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 20,
                      height: 3,
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.all(Radius.circular(12.0))
                      ),
                    ),
                  ],
                ),

               SizedBox(height: 20.0,),

                Container(
                  padding: EdgeInsets.only(left:40.00,right: 40.00),

                  child: TextFormField(

                    style: new TextStyle(fontFamily: 'Poppins'),

                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    controller: _Address,
                    decoration: InputDecoration(
                      hintText: 'Address',
                      hintStyle: new TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                          const BorderSide(color: Colors.transparent, width: 0.0)),
                    ),


                  ),
                ),


                SizedBox(height: 20.0,),

                Container(
                padding: EdgeInsets.only(left:40.00,right: 40.00),

                  child: Container(
                      padding: EdgeInsets.only(left:20.00,right:20.00),
                      decoration: BoxDecoration(
                          color: Colors.grey[300],

                      ),

                      child:DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(FontAwesomeIcons.arrowDown),
                    iconSize: 16,
                    elevation: 16,
                    style: TextStyle(color: Colors.grey),
                    isExpanded: true,




                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                    items: <String>['Address Type', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  )
                  )
                ),

                SizedBox(height: 20.0,),

                Container(
                  padding: EdgeInsets.only(left:40.00,right: 40.00),

                  child: TextFormField(

                    style: new TextStyle(fontFamily: 'Poppins'),

                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    controller: _Address,
                    decoration: InputDecoration(
                      hintText: 'Home/Flat No',
                      hintStyle: new TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                          const BorderSide(color: Colors.transparent, width: 0.0)),
                    ),


                  ),
                ),

                SizedBox(height: 20.0,),

                Container(
                  padding: EdgeInsets.only(left:40.00,right: 40.00),

                  child: TextFormField(

                    style: new TextStyle(fontFamily: 'Poppins'),

                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,
                    controller: _Address,
                    decoration: InputDecoration(
                      hintText: 'Landmark',
                      hintStyle: new TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontFamily: 'Poppins',
                      ),
                      contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                      border: OutlineInputBorder(

                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                          const BorderSide(color: Colors.transparent, width: 0.0)),
                    ),


                  ),
                ),
                SizedBox(height: 20.0,),

               Container(
                 width: 400,
                   padding: EdgeInsets.only(left:40.00,right: 40.00),
               child:
               RaisedButton(
                     elevation: 5.0,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(5),
                     ),
                     onPressed: () {

                     },
                     padding: EdgeInsets.all(12),
                     color: Color(0xFF00269d),
                     child: Text('ADD',
                         style: TextStyle(
                             color: Colors.white,
                             fontFamily: 'Poppins',
                             fontWeight: FontWeight.bold)),
                   ),
               )

               ]
             ),
             )


          ],
        )



      ),
    );
  }
}
