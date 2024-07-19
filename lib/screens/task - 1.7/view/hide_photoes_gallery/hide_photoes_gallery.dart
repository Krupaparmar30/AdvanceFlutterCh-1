import 'package:avd_ch_1/screens/task%20-%201.7/provider/provider.dart';
import 'package:avd_ch_1/utils/globle/photo_gallery/photo_gallery_global.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class hidePhotoesGallery extends StatelessWidget {
  const hidePhotoesGallery({super.key});

  @override
  Widget build(BuildContext context) {
    PhotoGallryProvider photoGallryProvider =
    Provider.of<PhotoGallryProvider>(context, listen: false);
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
  appBar: AppBar(
    title: Text("Hide Photoes"),
    actions: [Icon(Icons.favorite)],
  ),
      body: Column(
        children: [
       Row(
         children: [
           Text("Selecte"),
           Text('Today All')
         ],

       ),
       // ...   List.generate(hideList.length, (index) {
       //   return Container(
       //     height: height*0.1,
       //     width: width*0.1,
       //     color: Colors.pink,
       //   );
       // },)
          
        ],
      ),
    );
  }
}
