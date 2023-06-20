import 'package:device_preview/device_preview.dart';
import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home_Screen(),
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
      ),
    ),
  );
}

class Home_Screen extends StatelessWidget {
  var grdImg = [
    "https://images.pexels.com/photos/4142420/pexels-photo-4142420.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
    "https://images.pexels.com/photos/2272854/pexels-photo-2272854.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2350325/pexels-photo-2350325.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4062563/pexels-photo-4062563.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load",
  ];

  var grdTxt = ["HOT HITS", "RAP 91", "POP", "ROCK", "TRENDING"];

  var listImg = [
    "https://i.insider.com/635291a3390dfe00196d6236?width=1136&format=jpeg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqOKJGIL5eTDZ1E93NAezRINGAQCuz60f4hw&usqp=CAU",
    "https://i1.sndcdn.com/artworks-dmlDMxUENcpkQzp1-EOJpSg-t500x500.jpg",
    "data:image/jpeg;base64,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",
    "https://t-2.tstatic.net/palembang/foto/bank/images/Translate-Lirik-Lagu-Im-Good-David-Guetta-Bebe-Rexha.jpg",
  ];

  var title = ["Hero", "Unholy", "Lift Me Up", "Depression", "I'm Good"];
  var subtitle = [
    "Taylor Swift",
    "Sam Smith,Kim Petras",
    "Kim Petras",
    "Dax",
    "David Guetta & Bebe Rexha"
  ];
  var grdImg1 = [ "https://ichef.bbci.co.uk/news/976/cpsprodpb/4B64/production/_128800391_gettyimages-1320433070.jpg",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/4/4a/Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg/330px-Eminem_-_Concert_for_Valor_in_Washington%2C_D.C._Nov._11%2C_2014_%282%29_%28Cropped%29.jpg",
    "https://images.unsplash.com/photo-1558304970-abd589baebe5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bG9maXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.indianexpress.com/2023/01/Pathaan-4.jpg",
    "https://images.unsplash.com/photo-1513279922550-250c2129b13a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cm9tYW50aWN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1529139574466-a303027c1d8b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8cG9wfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",];

  var grdTxt2 =["The Weeknd",
    "Eminem",
    "Lo-Fi",
    "Hot\nHits Hindi",
    "Romantic Mix",
    "Pop-Shots"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Text(
              "Musify.",
              style: TextStyle(
                  color: Color.fromARGB(255, 208, 116, 146),
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, left: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Suggested Playlists",
                style: TextStyle(
                  color: Color.fromARGB(255, 208, 116, 146),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                      5,
                      (index) => Container(
                          margin: EdgeInsets.all(10),
                          height: 230,
                          width: 220,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(grdImg[index]))),
                          child: Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(bottom: 8, left: 8),
                              child: Text(
                                grdTxt[index],
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                            ),
                          )))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25, right: 180),
            child: Text(
              "Recommended for you",
              style: TextStyle(
                color: Color.fromARGB(255, 208, 116, 146),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 350,
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (Buildcontext, index) {
                    return ListTile(
                      leading: Container(
                        height: 65,
                        width: 65,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(listImg[index]))),
                      ),
                      title: Text(
                        title[index],
                        style: TextStyle(
                            color: Color.fromARGB(255, 208, 116, 146),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                      subtitle: Text(
                        subtitle[index],
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      trailing: const Icon(
                        Icons.favorite_border,
                        size: 20,
                        color: Colors.white,
                      ),
                    );
                  }),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 28, right: 260),
            child: Text(
              "Trending Now",
              style: TextStyle(
                color: Color.fromARGB(255, 208, 116, 146),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 400,
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, ),
                  itemBuilder: (context, index) {
                    return Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Container(
                                height: 200,
                                width: 180,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        fit: BoxFit.fill,
                                        image: NetworkImage(grdImg1[index]))),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 20,
                            left: 15,
                            child: Text(
                              grdTxt2[index],
                              style: const TextStyle(
                                  fontSize: 22,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      );
                  }),
            ),
          )
        ]),
      ),
      bottomNavigationBar: FlashyTabBar(
        iconSize: 28,
        height: 55,
        backgroundColor: Colors.black,
        selectedIndex: 0,
        //showElevation: true,
        onItemSelected: (int value) {},
        items: [
          FlashyTabBarItem(
            activeColor: Color.fromARGB(255, 208, 116, 146),
            icon: const Icon(Icons.home_outlined),
            title: const Text('Home'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.search),
            activeColor: Color.fromARGB(255, 208, 116, 146),
            title: const Text('Search'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.play_arrow),
            activeColor: Color.fromARGB(255, 208, 116, 146),
            title: const Text('Player'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.playlist_play_sharp),
            activeColor: Color.fromARGB(255, 208, 116, 146),
            title: const Text('Playlist'),
          ),
          FlashyTabBarItem(
            icon: const Icon(Icons.settings),
            activeColor: Color.fromARGB(255, 208, 116, 146),
            title: const Text('Settings'),
          ),
        ],
      ),
    );
  }
}
