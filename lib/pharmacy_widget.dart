
import 'package:data_portal_example_project/eczane_model.dart';
import 'package:data_portal_example_project/pharmacy_list.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PharmacyWidget extends StatelessWidget {
    PharmacyWidget({
    super.key,
 
  });

   List<EczaneModel> eczaneList = [
    EczaneModel(image: "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg", pharmacyname: 'Eczane Adı' , pharmacyphone: 00000000000 , pharmacyaddress: "Mahalle", pharmacydistrict: "xxxxxxx"),
    EczaneModel(image: "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg", pharmacyname: 'Eczane Adı' , pharmacyphone: 00000000000 , pharmacyaddress: "Mahalle" , pharmacydistrict: "xxxxxxx"),
    EczaneModel(image: "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg", pharmacyname: 'Eczane Adı' , pharmacyphone: 00000000000 , pharmacyaddress: "Mahalle" , pharmacydistrict: "xxxxxxx"),
    EczaneModel(image: "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg", pharmacyname: 'Eczane Adı' , pharmacyphone: 00000000000 , pharmacyaddress: "Mahalle" , pharmacydistrict: "xxxxxxx"),
    EczaneModel(image: "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg", pharmacyname: 'Eczane Adı' , pharmacyphone: 00000000000 , pharmacyaddress: "Mahalle" , pharmacydistrict: "xxxxxxx"),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg"),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Populer Pharmacy",
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        Column(
          children: [
            Container(
              width: double.infinity,
              height: 400,
              color: Colors.white30,
              //Ürünler Listesi Widgetı
              child: ListView.builder(
                  itemCount:
                      eczaneList.length, //listenin uzunluğunu veriyorsun
                  itemBuilder: (BuildContext context, int index) {
                    //listenin indexine erişip elemanları görebilmemiz için şart
                    //containerı sileriz radiusa değer verip resmin boyutunu büyültmek için
                    return PharmacyListWidget(
                      eczaneList: eczaneList[index],
                    );
                  }),
            ),
          ],
        )
      ],
    );
  }
}
