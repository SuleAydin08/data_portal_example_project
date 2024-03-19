class PharmacyModel {
  String image; //DEĞİŞKENLER aaaBbbb şeklinde yazılır.
  String pharmacyName;
  int pharmacyPhone;
  String pharmacyAddress;
  String pharmacyDistrict;

  PharmacyModel(
      {required this.image,
      required this.pharmacyName,
      required this.pharmacyPhone,
      required this.pharmacyAddress,
      required this.pharmacyDistrict});
//  static PharmacyModel fromJson()
}


//  factory PharmacyModel.fromJson(Map<String, dynamic> json) {
//     return switch (json) {
//       {
//         'image': String image,
//         'id': int id,
//         'ECZANE ADI': String pharmacyName,
//         'TELEFON': int pharmacyPhone,
//         'MAHALLE': String pharmacyAddress,
//         'CADDE-SOKAK': String avenueStreet,
//         'NO': int number,
//         'SEMT': String pharmacyDistrict,
//       } =>
//         PharmacyModel(
//           //bu değişkenler modeldeki değişkenler olması gerekir.
//           image: image,
//           pharmacyName: pharmacyName,
//           pharmacyPhone: pharmacyPhone,
//           pharmacyAddress: pharmacyAddress,
//           pharmacyDistrict: pharmacyDistrict,
//         ),
//       _ => throw const FormatException('Failed to load album.'),
//     };
//   }