import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PharmacyListWidget extends StatelessWidget {
  PharmacyListWidget({
    super.key,
    required this.pharmacyList,
  });

  Map pharmacyList;

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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pharmacyList['ECZANE ADI'],
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                 pharmacyList['TELEFON'],
                style: const TextStyle(
                  color: Colors.black,
                   fontSize: 10,
                ),
              ),
              Text(
                 pharmacyList['MAHALLE'],
                style: const TextStyle(
                  color: Colors.black,
                   fontSize: 10,
                ),
              ),
              Text(
                 pharmacyList["CADDE-SOKAK"],
                style: const TextStyle(
                  color: Colors.black,
                   fontSize: 10,
                ),
              ),
               Text(
                 pharmacyList["NO"],
                style: const TextStyle(
                  color: Colors.black,
                   fontSize: 10,
                ),
              ),
               Text(
                 pharmacyList["SEMT"],
                style: const TextStyle(
                  color: Colors.black,
                   fontSize: 10,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
