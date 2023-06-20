import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: bank_UI(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class bank_UI extends StatelessWidget {
  var icons = [
    Icons.account_box,
    Icons.miscellaneous_services,
    Icons.payments,
    Icons.attach_money,
    Icons.schedule,
    Icons.qr_code_scanner_sharp,
  ];
  var txt = [
    "My Account",
    "e Service",
    "Payments",
    "  Fund\nTransfer",
    "Scheduled\n Payments",
    "Scan to pay",
  ];
  var lead = [
    "WDRL",
    "SND",
    "RCV",
    "WDRL",
  ];
  var title = [
    "185245785623",
    "145812547863",
    "178452985236",
    "198563254785",
  ];
  var sub = [
    "10-03-2023",
    "01-03-2023",
    "22-12-2022",
    "10-12-2022",
  ];
  var trail = [
    "12,500",
    "22,500",
    "20,000",
    "10,000",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red[700],
        title: Text("Welcome! MAUSAM"),
        leading: const Icon(Icons.menu_outlined),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.qr_code_2,
              size: 40,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.red[700],
                  height: 100,
                ),
                Container(
                  color: Colors.red[100],
                  height: 641,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.red,
                              ),
                              Text(
                                "WOULD YOU LIKE TO?",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 270,
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, top: 20),
                              child: GridView.builder(
                                  itemCount: 6,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3),
                                  itemBuilder: (context, index) {
                                    return Card(
                                      color: Colors.white,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Icon(
                                            icons[index],
                                            color: Colors.red,
                                            size: 32,
                                          ),
                                          Text(
                                            txt[index],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          )
                                        ],
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.play_arrow,
                                  color: Colors.red,
                                ),
                                Text(
                                  "LAST TRANSACTIONS",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 200,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: ListView.builder(
                                itemCount: lead.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(
                                      top: 8,
                                      left: 10,
                                      right: 10,
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12),
                                      child: Container(
                                        color: Colors.white,
                                        height: 90,
                                        width: 380,
                                        child: ListTile(
                                          leading: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                              lead[index],
                                              style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          title: Padding(
                                            padding:
                                                const EdgeInsets.only(top: 20),
                                            child: Text(
                                              title[index],
                                               style: TextStyle(fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          subtitle: Text(
                                            sub[index],
                                             style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                          trailing: Text(
                                            trail[index],
                                             style: TextStyle(fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              left: 10,
              top: 20,
              child: Container(
                height: 160,
                width: 370,
                child: Card(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                          radius: 50,
                          backgroundColor: Colors.red,
                          child: CircleAvatar(
                            radius: 47,
                            backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/4195342/pexels-photo-4195342.jpeg?auto=compress&cs=tinysrgb&w=600"),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text(
                                "DAVID ALWIS",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(7.0),
                              child: Text("Balance : INR 2,98,500",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.red)),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 7),
                              child: Text("Account Number : 124567869535",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
