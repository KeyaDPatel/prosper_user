class Company {
  String? companyLogo;
  String? companyId;
  String? companyName;
  List<String>? productServices;

  Company(
      {this.companyLogo,
        this.companyId,
        this.companyName,
        this.productServices});

  Company.fromJson(Map<String, dynamic> json) {
    companyLogo = json['companyLogo'];
    companyId = json['companyId'];
    companyName = json['companyName'];
    productServices = json['productServices'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['companyLogo'] = this.companyLogo;
    data['companyId'] = this.companyId;
    data['companyName'] = this.companyName;
    data['productServices'] = this.productServices;
    return data;
  }
}
