import 'dart:convert';
import 'package:data_portal_example_project/pharmacy_list.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class PharmacyWidget extends StatefulWidget {
  const PharmacyWidget({
    super.key,
  });

  @override
  State<PharmacyWidget> createState() => _PharmacyWidgetState();
}

class _PharmacyWidgetState extends State<PharmacyWidget> {
  //Verilerin çekileceği liste neden liste içine map değişkenini yazdık
  //çünkü json çıktısında liste içinde elemanlar map içerisinde ayrı ayrı geliyor örnek çıktı
  // "records": [
  //     {
  //       "_id": 1,
  //       "ECZANE ADI": "BARBAROS ECZANESİ",
  //       "TELEFON": "2164468128",
  //       "MAHALLE": "Yayla Mahallesi",
  //       "CADDE-SOKAK": "Şinasi Dural Caddesi",
  //       "NO": "90/B",
  //       "SEMT": "Merkez"
  //     },
  //     { Bu çıktıs ise veri çekeceğimiz json url çıktısında örnektir
  List<Map<String, dynamic>> pharmacyList = [];

//Baxkendde verileri çekmemm için eklediğim api call functionum
  Future<void> getPharmacyList() async {
    String url =
        "https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"; //verileri çekeceğimiz url

    try {
      //Urlden veri çekme kısmı
      http.Response response = await http.get(Uri.parse(
          url)); //url üstte string o yüzden burada verileri ondan çekebilmemeiz için formatını Uri'ye çevirmemiz lazım

      //HTTP yanıtı başarılı ise devam et
      if (response.statusCode == 200) {
        Map<String, dynamic> responseData = json.decode(response.body);
        List<dynamic> records = responseData['result']['records'];
//Aşağıda yer alan json çıktısında göründüğü gibi üst kısımda responseData tüm dosyanın map bilgisini çeker
//ardından responseDatanın içindeki result mapinden result listesini kullanmak istediğimiz iiçin bu şekilde yazarız

        // "help": "https://veri.tuzla.bel.tr/api/3/action/help_show?name=datastore_search",
        // "success": true,
        // "result": {
        //   "include_total": true,
        //   "limit": 100,
        //   "records_format": "objects",
        //   "resource_id": "c3e4d534-d388-4ebf-8796-0f25a11dce11",
        //   "total_estimation_threshold": null,
        //   "records": [
        //     {
        //       "_id": 1,

        //State Güncelleme
        setState(() {
          pharmacyList = List<Map<String, dynamic>>.from(
              records); //List<Map<String, dynamic>>. bu tipteki değişkenden (frommm) o değişken nedir "records"
        });
      } else {
        // If the server did not return a 200 OK response,
        // then throw an exception.
        throw Exception('Failed to load pharmacy List');
      }
    } catch (e) {
      //Hata durumunda konsola yazdır
      print('e');
    }
  }

  @override
  void initState() {
    super.initState();
    getPharmacyList();
  }

  // Future<void> init() async {
  //   var pharmacy = await getPharmacyList();
  //   pharmacyList = pharmacy as List<PharmacyModel>;
  // }

  // Future<PharmacyModel> getPharmacyList() async {
  //   //await olduğunu gördüğünde async eklemen gerekiyor hatta Future fonk. async eklemen gerek
  //   final response = await http.get(Uri.parse(
  //       "https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"));
  //   if (response.statusCode == 200) {
  //     return PharmacyModel.fromJson(jsonDecode(response.body).toList());
  //   } else {
  //     // If the server did not return a 200 OK response,
  //     // then throw an exception.
  //     throw Exception('Failed to load album');
  //   }
  // }

  // List<PharmacyModel> pharmacyList = [
  //   PharmacyModel(
  //       image:
  //          "https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"));
  //       pharmacyName: 'Eczane Adı',
  //       pharmacyPhone: 00000000000,
  //       pharmacyAddress: "Mahalle",
  //       pharmacyDistrict: "xxxxxxx"),
  //   PharmacyModel(
  //       image:
  //           "https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"));
  //       pharmacyName: 'Eczane Adı',
  //       pharmacyPhone: 00000000000,
  //       pharmacyAddress: "Mahalle",
  //       pharmacyDistrict: "xxxxxxx"),
  //   PharmacyModel(
  //       image:
  //"https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"));
  //       pharmacyName: 'Eczane Adı',
  //       pharmacyPhone: 00000000000,
  //       pharmacyAddress: "Mahalle",
  //       pharmacyDistrict: "xxxxxxx"),
  //   PharmacyModel(
  //       image:
  //         "https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"));
  //       pharmacyName: 'Eczane Adı',
  //       pharmacyPhone: 00000000000,
  //       pharmacyAddress: "Mahalle",
  //       pharmacyDistrict: "xxxxxxx"),
  //   PharmacyModel(
  //       image:
  //         "https://veri.tuzla.bel.tr/api/3/action/datastore_search?resource_id=c3e4d534-d388-4ebf-8796-0f25a11dce11"));
  //       pharmacyName: 'Eczane Adı',
  //       pharmacyPhone: 00000000000,
  //       pharmacyAddress: "Mahalle",
  //       pharmacyDistrict: "xxxxxxx"),
  // ];
  List<String> growableList = [
    'A',
    'B',
    'sadasdas',
    'sdasda'
  ]; //Modelsiz listemiz bu listeyi projede kullanmıyoruz sadece örnek için koyduk
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black54),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://st.depositphotos.com/7752738/54475/v/950/depositphotos_544756944-stock-illustration-pharmacy-store-storefront-vector-building.jpg"),
              ),
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            "Populer Pharmacy",
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.black),
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
                      pharmacyList.length, //listenin uzunluğunu veriyorsun
                  itemBuilder: (BuildContext context, int index) {
                    //listenin indexine erişip elemanları görebilmemiz için şart
                    //containerı sileriz radiusa değer verip resmin boyutunu büyültmek için
                    return PharmacyListWidget(
                        pharmacyList: pharmacyList[index]);

                    // return Text(growableList[
                    //     index]); //Modelsiz listeye örnek için return fonksiyonumuz
                  }),
            ),
          ],
        )
      ],
    );
  }
}
