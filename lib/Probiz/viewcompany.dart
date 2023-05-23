import 'dart:convert';

import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:prosper_user/Models/cmpdetails.dart';
import 'package:prosper_user/Probiz/api.dart';
import 'package:prosper_user/Probiz/companydetails_text.dart';
import 'package:prosper_user/Probiz/unplug_it_consulting.dart';
import 'package:prosper_user/Probiz/user_repo.dart';

import 'package:url_launcher/url_launcher.dart';


class CompanyDetails extends StatefulWidget {
  String companyId;

  CompanyDetails({Key? key, required this.companyId}) : super(key: key);

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  Color _iconColor = Colors.black;
  var profileEmail = '';

  List<IdLinkDtos> idLinkDtos = [];
  List<CompanyOffices> companyOffices = [];
  List<ContactPersons> contactPersons = [];
  List<Products> products = [];
  List<Services> services = [];

  String cmpname = '';

  Future<GetCompanyListResponseModel> getCompanyDetails() async {
    final Response response =
    await http.get(Uri.parse(COMPANY_DETAILS_URL + widget.companyId));
    print("1response from getCompanyDetails api ${response.body}");
    GetCompanyListResponseModel getCompanyListResponse =
    GetCompanyListResponseModel();
    // CompanyIdLink getCompanyListResponse1 = CompanyIdLink();

    try {
      // print("\n2-------company details ${getCompanyListResponse.companyName}");
      getCompanyListResponse =
          GetCompanyListResponseModel.fromJson(jsonDecode(response.body));

      cmpname = getCompanyListResponse.companyName ?? '';
      idLinkDtos = getCompanyListResponse.idLinkDtos ?? [];
      companyOffices = getCompanyListResponse.companyOffices ?? [];
      contactPersons = getCompanyListResponse.contactPersons ?? [];
      products = getCompanyListResponse.products ?? [];
      services = getCompanyListResponse.services ?? [];

      // setState(() {});
    } catch (e) {}

    if (response.statusCode == 200) {
      return getCompanyListResponse;
    } else {
      return getCompanyListResponse;
    }
  }

  @override
  void initState() {
    super.initState();
    profileEmail = AppDataService.email;
    setState(() {});
    print(profileEmail);
  }

  int? _value;

  // final screens = [
  //   const DashBoard(),
  // ];
  @override
  Widget build(BuildContext context) {
    // double height = MediaQuery.of(context).size.height;
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          titleSpacing: 110,
          title: Center(
            child: Text(
              companyHeader,
              style: const TextStyle(color: Colors.blue, fontSize: 26),
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications,
                color: Colors.black,
                size: 30,
              ),
            ),
          ],
          // leading: Icon(Icons.keyboard_backspace, color: Colors.black,),
        ),
        // bottomNavigationBar: BottomNavigationBar(
        //   currentIndex: currentIndex,
        //     onTap: (index)=>setState(()=> currentIndex = index),
        //   backgroundColor: Colors.blue,
        //   items: const [
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.home, color: Colors.white, size: 30,),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.star, color: Colors.white,size: 30,),
        //       label: '',
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.person, color: Colors.white,size: 30,),
        //       label: '',
        //     ),
        //   ],
        // ),
        body: FutureBuilder(
          future: getCompanyDetails(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return Text(noApiDataFound);
            } else {
              GetCompanyListResponseModel companyDetails =
              snapshot.data as GetCompanyListResponseModel;
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            child: Container(
                              // width: width / 1.1,
                              height: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      width: 1, color: Colors.white),
                                  color: Colors.white,
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 0.5,
                                    )
                                  ]),
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(10, 20, 10, 20),
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          featuredLogo,
                                          height: 50,
                                        ),
                                        // NetworkImage(companyDetails.logoUrl),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Container(
                                            child: SingleChildScrollView(
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    companyDetails.companyName
                                                        .toString(),
                                                    style: const TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                        FontWeight.bold),
                                                    softWrap: false,
                                                    maxLines: 1,
                                                    overflow:
                                                    TextOverflow.ellipsis, //new
                                                  ),
                                                  // Text(profileEmail),

                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  // Column(
                                                  //   children: [
                                                  //     TextSpan(
                                                  //       text: 'register',
                                                  //       recognizer: TapGestureRecognizer()..onTap = (){
                                                  //         print('tapped');
                                                  //       }
                                                  //     )
                                                  //   ],
                                                  // ),
                                                  SizedBox(
                                                    // child: GestureDetector(onTap: ()  async {
                                                    //   if (await canLaunchUrl(url)) {
                                                    //     await launchUrl(url);
                                                    //   } else {
                                                    //     throw 'Could not launch $url';
                                                    //   }
                                                    // },
                                                    child: InkWell(
                                                      onTap: () =>
                                                          launchUrl(
                                                              Uri.parse(
                                                                  companyDetails
                                                                      .websiteLink ??
                                                                      "")),
                                                      child: Text(
                                                        companyDetails
                                                            .websiteLink ??
                                                            "",
                                                        maxLines: 1,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        softWrap: false,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                          onPressed: () {
                                            setState(() {
                                              _iconColor = Colors.red;
                                            });
                                            onTap();
                                          },
                                          icon: Icon(
                                              Icons.star, color: _iconColor),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        companyDetails.tagline ?? '',
                                        style: const TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Column(
                                    children: [
                                      Text(
                                        companyDetails.description ?? '',
                                        style: const TextStyle(fontSize: 17),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Expanded(
                                      child: ListView.builder(
                                          itemCount: idLinkDtos.length,
                                          itemBuilder:
                                              (BuildContext context,
                                              int index) {
                                            return InkWell(
                                              onTap: () =>
                                                  launchUrl(Uri.parse(
                                                      "${idLinkDtos
                                                          .elementAt(index)
                                                          .value}")),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                      "${idLinkDtos
                                                          .elementAt(index)
                                                          .idNoLinkType}"),
                                                ],
                                              ),
                                            );
                                          })),
                                  // InkWell(
                                  //   onTap: () =>
                                  //       launchUrl(Uri.parse(
                                  //           "${idLinkDtos.elementAt(index).idNoLinkType == 'FACEBOOK'}")),
                                  //   child: Column(
                                  //     children: [
                                  //       Icon(
                                  //         FontAwesomeIcons.instagram,
                                  //         size: 20,
                                  //       ),
                                  //
                                  //     ],
                                  //   ),
                                  // )

                                  for(var itemData in {idLinkDtos
                                      .elementAt(index)
                                      .idNoLinkType})
                                    if (idLinkDtos.elementAt(index).idNoLinkType!.contains('FACEBOOK'))
                                      ...[
                                        InkWell(onTap: () => launchUrl(Uri.parse(
                                            "${idLinkDtos.elementAt(index).value}")),
                                          child: Icon(
                                            FontAwesomeIcons.facebook,
                                            size: 20,
                                          ),
                                        ),
                                      ]
                                    else
                                      ...[
                                        Text('nothing')
                                      ]
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: width / 1.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3.0,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(15, 20, 00, 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(productName,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  color: Colors.black,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      children: List<Widget>.generate(
                                          products.length, (int index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 20, right: 50, top: 5, bottom: 7),
                                          child: Container(
                                            height: 37,
                                            width: 350,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black38, width: 1),
                                              borderRadius: BorderRadius.circular(16),
                                              color: Colors.white,
                                              boxShadow: const [
                                                BoxShadow(
                                                  blurRadius: 1.0,
                                                )
                                              ],
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 8),
                                                  child: ChoiceChip(
                                                    label: Text(
                                                      "${products
                                                          .elementAt(index)
                                                          .productName}",
                                                      style:
                                                      TextStyle(color: Colors.blue,fontSize: 15),
                                                    ),
                                                    selected: _value == index,
                                                    backgroundColor: Colors.white,
                                                    shape: StadiumBorder(
                                                      side: BorderSide(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                    onSelected: (bool selected) {
                                                      setState(() {
                                                        _value = selected ? index : null;
                                                      }
                                                      );
                                                      Navigator.push(context,
                                                          MaterialPageRoute(builder: (context) => unplugItConsulting()
                                                          ));
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(1),
                                                  child: Container(
                                                    child: ChoiceChip(
                                                      label: Text(
                                                        'Info',style: TextStyle(color: Colors.black, fontSize: 15),
                                                      ),
                                                      selected: _value == index,
                                                      backgroundColor: Colors.cyan.shade100,
                                                      shape: StadiumBorder(
                                                        side: BorderSide(
                                                          color: Colors.black26,
                                                        ),
                                                      ),
                                                      onSelected: (bool selected) {
                                                        setState(() {
                                                          _value = selected ? index : null;
                                                        }
                                                        );
                                                        Navigator.push(context,
                                                            MaterialPageRoute(builder: (context) => unplugItConsulting()
                                                            ));
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: width / 1.1,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Colors.white,
                              boxShadow: const [
                                BoxShadow(
                                  blurRadius: 3.0,
                                )
                              ],
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                  const EdgeInsets.fromLTRB(15, 20, 00, 10),
                                  child: Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Text(serviceName,
                                              style: const TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w400)),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const Divider(
                                  color: Colors.black,
                                ),
                                Column(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Wrap(
                                      children: List<Widget>.generate(
                                          services.length, (int index) {
                                        return Padding(
                                          padding: const EdgeInsets.only(left: 20,

                                              right: 50, top: 5, bottom: 7),
                                          child: Container(
                                            height: 37,
                                            width: 350,
                                            decoration: BoxDecoration(
                                              border: Border.all(color: Colors.black38, width: 2),
                                              borderRadius: BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsets.only(bottom: 8),
                                                  child: ChoiceChip(
                                                    label: Text(
                                                      "${services
                                                          .elementAt(index)
                                                          .serviceName}",
                                                      style:
                                                      const TextStyle(color: Colors.blue,fontSize: 15),
                                                    ),
                                                    selected: _value == index,
                                                    backgroundColor: Colors.white,
                                                    onSelected: (bool selected) {
                                                      setState(() {
                                                        _value = selected ? index : null;
                                                      }
                                                      );
                                                      Navigator.push(context,
                                                          MaterialPageRoute(builder: (context) => unplugItConsulting()
                                                          ));
                                                    },
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.all(1),
                                                  child: Container(
                                                    child: ChoiceChip(
                                                      label: Text(
                                                        'Info',style: TextStyle(color: Colors.black, fontSize: 15),
                                                      ),
                                                      selected: _value == index,
                                                      backgroundColor: Colors.cyan.shade100,
                                                      shape: StadiumBorder(
                                                        side: BorderSide(
                                                          color: Colors.black26,
                                                        ),
                                                      ),
                                                      onSelected: (bool selected) {
                                                        setState(() {
                                                          _value = selected ? index : null;
                                                        }
                                                        );
                                                        Navigator.push(context,
                                                            MaterialPageRoute(builder: (context) => unplugItConsulting()
                                                            ));
                                                      },
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      }).toList(),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                              width: width / 1.1,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 3.0,
                                    // spreadRadius: 1.0,
                                  ),
                                ],
                              ),
                              child: Column(
                                children: [
                                  // const SizedBox(height: 10,),
                                  Padding(
                                    padding:
                                    const EdgeInsets.fromLTRB(10, 20, 00, 10),
                                    child: Row(
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              companyContact,
                                              style: const TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Divider(
                                    color: Colors.black,
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                        iconUser,
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "${contactPersons
                                            .elementAt(index)
                                            .name} ",
                                        style: const TextStyle(
                                            fontSize: 19, color: Colors.blue),
                                      ),
                                      Text(
                                        "(${contactPersons
                                            .elementAt(index)
                                            .designation})",
                                        style: const TextStyle(
                                            fontSize: 19, color: Colors.blue),
                                      ),
                                    ],
                                  ),
                                  // const SizedBox(height: 15,),
                                  // Row(
                                  //   children: [
                                  //     const SizedBox(width: 20,),
                                  //     const Text('Role:', style: TextStyle(fontSize: 19,color: Colors.black,),),
                                  //     const SizedBox(width: 10,),
                                  //     Text("${contactPersons.elementAt(index).designation}",
                                  //       style: const TextStyle(fontSize: 19,color: Colors.blue),),
                                  //   ],
                                  // ),
                                  if (contactPersons
                                      .elementAt(index)
                                      .phone1!
                                      .isEmpty)
                                    ...[]
                                  else
                                    ...[
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            iconCall,
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "+91 ${contactPersons
                                                .elementAt(index)
                                                .phone1}",
                                            style: const TextStyle(
                                              color: Colors.blue,
                                              fontSize: 19,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  if (contactPersons
                                      .elementAt(index)
                                      .phone2!
                                      .isEmpty)
                                    ...[]
                                  else
                                    ...[
                                      const SizedBox(
                                        height: 15,
                                      ),
                                      Row(
                                        children: [
                                          const SizedBox(
                                            width: 20,
                                          ),
                                          Image.asset(
                                            iconCall,
                                            height: 20,
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "+91 ${contactPersons
                                                .elementAt(index)
                                                .phone2}",
                                            style: const TextStyle(
                                              color: Colors.blue,
                                              fontSize: 19,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  // const SizedBox(height: 15,),
                                  // Row(
                                  //     children: [
                                  //       const SizedBox(width: 20,),
                                  //       Image.asset('images/web.png', height: 20,),
                                  //       const SizedBox(width: 10,),
                                  //       Text("${contactPersons.elementAt(index).phone2}",
                                  //         style: TextStyle(color: Colors.blue,fontSize: 19,),),
                                  //     ]
                                  // ),
                                  if (contactPersons
                                      .elementAt(index)
                                      .email1!
                                      .isEmpty)
                                    ...[]
                                  else
                                    ...[
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Image.asset(
                                          iconEmail,
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${contactPersons
                                              .elementAt(index)
                                              .email1}",
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontSize: 19,
                                          ),
                                        ),
                                      ]),
                                    ],
                                  if (contactPersons
                                      .elementAt(index)
                                      .email2!
                                      .isEmpty)
                                    ...[]
                                  else
                                    ...[
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Image.asset(
                                          iconEmail,
                                          height: 20,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "${contactPersons
                                              .elementAt(index)
                                              .email2}",
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontSize: 19,
                                          ),
                                        ),
                                      ]),
                                    ],

                                  const SizedBox(
                                    height: 20,
                                  ),

                                  Row(children: [
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Image.asset(
                                      iconPin,
                                      height: 20,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Text(
                                        "${companyOffices
                                            .elementAt(index)
                                            .house}"
                                            ', '
                                            "${companyOffices
                                            .elementAt(index)
                                            .officeName}"
                                            ' '
                                            "${companyOffices
                                            .elementAt(index)
                                            .locality}"
                                            ', '
                                            "${companyOffices
                                            .elementAt(index)
                                            .city}"
                                            ', '
                                            "${companyOffices
                                            .elementAt(index)
                                            .state}"
                                            ', '
                                            "${companyOffices
                                            .elementAt(index)
                                            .pinCode}",
                                        style: const TextStyle(
                                          color: Colors.blue,
                                          fontSize: 19,
                                        ),
                                      ),
                                    ),
                                  ]),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      Image.asset(
                                        iconMap,
                                        height: 20,
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "${companyOffices
                                              .elementAt(index)
                                              .mapUrl}",
                                          style: const TextStyle(
                                            color: Colors.blue,
                                            fontSize: 19,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ))
                        ],
                      ));
                },
              );
            }
          },
        ));
  }

  void onTap() async {
    var url = FAVORITE_CMP;
    var data = {
      "companyId": widget.companyId,
      "emailId": profileEmail,
    };
    var bodyy = json.encode(data);
    print(bodyy);
    var urlParse = Uri.parse(url);
    http.Response response = await http.post(urlParse,
        body: bodyy, headers: {"Content-Type": "application/json"});
    print(response);
  }
}