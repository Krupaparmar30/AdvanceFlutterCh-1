import 'package:avd_ch_1/utils/globle/photo_gallery/photo_gallery_global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/provider.dart';

class photo_gallry extends StatelessWidget {
  const photo_gallry({super.key});

  //PhotoGallryProvider
  @override
  Widget build(BuildContext context) {
    PhotoGallryProvider photoGallryProvider =
        Provider.of<PhotoGallryProvider>(context, listen: false);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("Photo Gallery"),
        elevation: 2,
        bottomOpacity: 2,
        actions: [
          Row(
            children: [
              Icon(Icons.search_rounded),
              PopupMenuButton<int>(
                icon: Icon(Icons.more_vert, color: Colors.black),
                onSelected: (value) {
                  switch (value) {
                    case 1:
                      if (value == 1) {
                        photoGallryProvider.LocalAuthenticationUse(context);
                      }
                      // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Hidephotogallery()));
                      break;
                    case 2:
                      break;
                    case 3:
                      break;
                  }
                },
                itemBuilder: (context) => [
                  PopupMenuItem(
                    value: 1,
                    child: ListTile(
                      leading: Icon(Icons.edit, color: Colors.white),
                      title:
                          Text('Edit', style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: ListTile(
                      leading: Icon(Icons.hide_image, color: Colors.white),
                      title: Text('Hide Photos',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: ListTile(
                      leading: Icon(Icons.settings, color: Colors.white),
                      title: Text('Setting',
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
                color: Colors.grey[800],
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 5.0,
              childAspectRatio: 0.750),
          itemCount: galleryImages.length,
          itemBuilder: (context, index) {
            final save = galleryImages[index];
            final text = name[index];
            final countes = count[index];
            return Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        width: width * 0.3,
                        height: height * 0.130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                                fit: BoxFit.cover, image: AssetImage(save))),
                      ),
                      Text(
                        text,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        countes,
                        style: TextStyle(
                            fontSize: 12, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
