import 'package:flutter/material.dart';

import 'pharmacy_widget.dart';

class DataPortal extends StatefulWidget {
  const DataPortal({super.key, required String title});

  @override
  State<DataPortal> createState() => _DataPortalState();
}

class _DataPortalState extends State<DataPortal> {

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Tuzla Open Data Portal Example Project",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4.0),
          child: Container(
            color: Colors.black,
            height: 4.0,
          ),
        ),
      ),
      body: PharmacyWidget(),
    );
  }
}
