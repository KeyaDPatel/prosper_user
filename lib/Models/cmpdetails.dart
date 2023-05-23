class GetCompanyListResponseModel {
  num? id;
  String? companyId;
  String? companyName;
  String? companyPoc;
  String? description;
  String? tagline;
  String? logoUrl;
  String? websiteLink;
  String? establishedSince;
  String? companyStatus;
  List<IdLinkDtos>? idLinkDtos;
  List<CompanyOffices>? companyOffices;
  List<ContactPersons>? contactPersons;
  List<Products>? products;
  List<Services>? services;

  GetCompanyListResponseModel(
      {this.id,
        this.companyId,
        this.companyName,
        this.companyPoc,
        this.description,
        this.tagline,
        this.logoUrl,
        this.websiteLink,
        this.establishedSince,
        this.companyStatus,
        this.idLinkDtos,
        this.companyOffices,
        this.contactPersons,
        this.products,
        this.services});

  GetCompanyListResponseModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['companyId'];
    companyName = json['companyName'];
    companyPoc = json['companyPoc'];
    description = json['description'];
    tagline = json['tagline'];
    logoUrl = json['logoUrl'];
    websiteLink = json['websiteLink'];
    establishedSince = json['establishedSince'];
    companyStatus = json['companyStatus'];
    if (json['idLinkDtos'] != null) {
      idLinkDtos = <IdLinkDtos>[];
      json['idLinkDtos'].forEach((v) {
        idLinkDtos!.add(IdLinkDtos.fromJson(v));
      });
    }
    if (json['companyOffices'] != null) {
      companyOffices = <CompanyOffices>[];
      json['companyOffices'].forEach((v) {
        companyOffices!.add(CompanyOffices.fromJson(v));
      });
    }
    if (json['contactPersons'] != null) {
      contactPersons = <ContactPersons>[];
      json['contactPersons'].forEach((v) {
        contactPersons!.add(ContactPersons.fromJson(v));
      });
    }
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['companyId'] = companyId;
    data['companyName'] = companyName;
    data['companyPoc'] = companyPoc;
    data['description'] = description;
    data['tagline'] = tagline;
    data['logoUrl'] = logoUrl;
    data['websiteLink'] = websiteLink;
    data['establishedSince'] = establishedSince;
    data['companyStatus'] = companyStatus;
    if (idLinkDtos != null) {
      data['idLinkDtos'] = idLinkDtos!.map((v) => v.toJson()).toList();
    }
    if (companyOffices != null) {
      data['companyOffices'] =
          companyOffices!.map((v) => v.toJson()).toList();
    }
    if (contactPersons != null) {
      data['contactPersons'] =
          contactPersons!.map((v) => v.toJson()).toList();
    }
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class IdLinkDtos {
  num? id;
  String? idNoLinkType;
  String? value;

  IdLinkDtos({this.id, this.idNoLinkType, this.value});

  IdLinkDtos.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idNoLinkType = json['idNoLinkType'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idNoLinkType'] = idNoLinkType;
    data['value'] = value;
    return data;
  }
}

class CompanyOffices {
  num? id;
  String? companyId;
  String? officeType;
  String? officeId;
  String? officeName;
  String? officeTiming;
  String? state;
  String? city;
  String? pinCode;
  String? house;
  String? locality;
  String? mapUrl;
  String? createdBy;

  CompanyOffices(
      {this.id,
        this.companyId,
        this.officeType,
        this.officeId,
        this.officeName,
        this.officeTiming,
        this.state,
        this.city,
        this.pinCode,
        this.house,
        this.locality,
        this.mapUrl,
        this.createdBy});

  CompanyOffices.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['companyId'];
    officeType = json['officeType'];
    officeId = json['officeId'];
    officeName = json['officeName'];
    officeTiming = json['officeTiming'];
    state = json['state'];
    city = json['city'];
    pinCode = json['pinCode'];
    house = json['house'];
    locality = json['locality'];
    mapUrl = json['mapUrl'];
    createdBy = json['createdBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['companyId'] = companyId;
    data['officeType'] = officeType;
    data['officeId'] = officeId;
    data['officeName'] = officeName;
    data['officeTiming'] = officeTiming;
    data['state'] = state;
    data['city'] = city;
    data['pinCode'] = pinCode;
    data['house'] = house;
    data['locality'] = locality;
    data['mapUrl'] = mapUrl;
    data['createdBy'] = createdBy;
    return data;
  }
}

class ContactPersons {
  num? id;
  String? companyId;
  String? officeId;
  String? name;
  String? designation;
  String? qualification;
  String? phone1;
  String? phone2;
  String? whatsApp;
  String? telegram;
  String? email1;
  String? email2;
  String? createdBy;

  ContactPersons(
      {this.id,
        this.companyId,
        this.officeId,
        this.name,
        this.designation,
        this.qualification,
        this.phone1,
        this.phone2,
        this.whatsApp,
        this.telegram,
        this.email1,
        this.email2,
        this.createdBy});

  ContactPersons.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    companyId = json['companyId'];
    officeId = json['officeId'];
    name = json['name'];
    designation = json['designation'];
    qualification = json['qualification'];
    phone1 = json['phone1'];
    phone2 = json['phone2'];
    whatsApp = json['whatsApp'];
    telegram = json['telegram'];
    email1 = json['email1'];
    email2 = json['email2'];
    createdBy = json['createdBy'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['companyId'] = companyId;
    data['officeId'] = officeId;
    data['name'] = name;
    data['designation'] = designation;
    data['qualification'] = qualification;
    data['phone1'] = phone1;
    data['phone2'] = phone2;
    data['whatsApp'] = whatsApp;
    data['telegram'] = telegram;
    data['email1'] = email1;
    data['email2'] = email2;
    data['createdBy'] = createdBy;
    return data;
  }
}

class Products {
  num? id;
  String? tertiaryCategoryId;
  String? companyId;
  String? productId;
  String? productName;
  String? productDesc;
  String? type;
  String? createdBy;
  num? productPrice;
  num? productDiscount;

  Products(
      {this.id,
        this.tertiaryCategoryId,
        this.companyId,
        this.productId,
        this.productName,
        this.productDesc,
        this.type,
        this.createdBy,
        this.productPrice,
        this.productDiscount});

  Products.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tertiaryCategoryId = json['tertiaryCategoryId'];
    companyId = json['companyId'];
    productId = json['productId'];
    productName = json['productName'];
    productDesc = json['productDesc'];
    type = json['type'];
    createdBy = json['createdBy'];
    productPrice = json['productPrice'];
    productDiscount = json['productDiscount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['tertiaryCategoryId'] = this.tertiaryCategoryId;
    data['companyId'] = this.companyId;
    data['productId'] = this.productId;
    data['productName'] = this.productName;
    data['productDesc'] = this.productDesc;
    data['type'] = this.type;
    data['createdBy'] = this.createdBy;
    data['productPrice'] = this.productPrice;
    data['productDiscount'] = this.productDiscount;
    return data;
  }
}

class Services {
  num? id;
  String? stertiaryCategoryId;
  String? scompanyId;
  String? serviceId;
  String? serviceName;
  String? serviceDesc;
  String? stype;
  String? screatedBy;
  num? servicePrice;
  num? serviceDiscount;

  Services(
      {this.id,
        this.stertiaryCategoryId,
        this.scompanyId,
        this.serviceId,
        this.serviceName,
        this.serviceDesc,
        this.stype,
        this.screatedBy,
        this.servicePrice,
        this.serviceDiscount});

  Services.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    stertiaryCategoryId = json['stertiaryCategoryId'];
    scompanyId = json['scompanyId'];
    serviceId = json['serviceId'];
    serviceName = json['serviceName'];
    serviceDesc = json['serviceDesc'];
    stype = json['stype'];
    screatedBy = json['screatedBy'];
    servicePrice = json['servicePrice'];
    serviceDiscount = json['serviceDiscount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = this.id;
    data['stertiaryCategoryId'] = this.stertiaryCategoryId;
    data['scompanyId'] = this.scompanyId;
    data['serviceId'] = this.serviceId;
    data['serviceName'] = this.serviceName;
    data['serviceDesc'] = this.serviceDesc;
    data['stype'] = this.stype;
    data['screatedBy'] = this.screatedBy;
    data['servicePrice'] = this.servicePrice;
    data['serviceDiscount'] = this.serviceDiscount;
    return data;
  }
}