import 'dart:convert';

List<CompanyData> searchApiFromJson(String str) => List<CompanyData>.from(json.decode(str).map((x) => CompanyData.fromJson(x)));

String searchApiToJson(List<CompanyData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CompanyData {
  CompanyData({
    required this.companyLogo,
    required this.companyId,
    required this.companyName,
    required this.productServices,
  });

  String companyLogo;
  String companyId;
  String companyName;
  dynamic productServices;

  factory CompanyData.fromJson(Map<String, dynamic> json) => CompanyData(
    companyLogo: null == json["companyLogo"] ? '' : json["companyLogo"],
    companyId: json["companyId"] == null ? null : json["companyId"],
    companyName: json["companyName"] == null ? null : json["companyName"],
    productServices: json["productServices"] == null ? null : List<String>.from(json["productServices"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "companyLogo": companyLogo == null ? null : companyLogo,
    "companyId": companyId == null ? null : companyId,
    "companyName": companyName == null ? null : companyName,
    "productServices": productServices == null ? null : List<dynamic>.from(productServices.map((x) => x)),
  };
}
