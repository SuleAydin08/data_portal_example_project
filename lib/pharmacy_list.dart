import 'package:data_portal_example_project/eczane_model.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PharmacyListWidget extends StatelessWidget {
  PharmacyListWidget({
    super.key,
    required this.eczaneList,
  });

  EczaneModel eczaneList;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 125,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(15),
        color: const Color.fromARGB(255, 251, 251, 251),
      ),
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(15),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg",
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 9,height: 9,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                eczaneList.pharmacyname,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                eczaneList.pharmacyphone.toString(),
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                eczaneList.pharmacyaddress,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                eczaneList.pharmacydistrict,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
