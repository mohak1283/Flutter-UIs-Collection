import 'package:flutter/material.dart';
import 'package:profile_screen/view_post.dart';

class GridSection extends StatelessWidget {

  List<String> images = ["assets/list_item_one.jpg" ,
   "assets/list_item_second.jpg",
   "assets/list_item_third.jpg",
   "assets/list_item_fourth.jpg",
   "assets/list_item_fifth.jpg",
   "assets/list_item_sixth.jpg",
   ];

   GridSection();
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
        crossAxisCount: 3,
        children: List.generate(images.length, (index){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: (){
               Navigator.push(context, MaterialPageRoute(
                 builder: ((context) => ViewPostPage(images[index]))
               ));
        },
                    child: Container(
              height: 100.0,
              width: 100.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(images[index]))),
            ),
      ),
    );
        }),
        
      );
  }
}