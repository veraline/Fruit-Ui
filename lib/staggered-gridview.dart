import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter/material.dart';

void main() => runApp( const Gridview());

List<String> imagePaths =
[  "assets/Avocado2.png",  "assets/Banana2.png",  "assets/Cherry1.png",
"assets/Pineapple1.png", "assets/Strawberry22.png", "assets/Strawberry33.png" ];

List <Color> imageColors = const [Color(0xffd9edeb), Color(0xfff1e4ab), Color(0xfff6e3d8),
  Color(0xffd3deb6),Color(0xffead6de), Color(0xffe5e5f1)];

List<String> imagePaths2 = ["assets/Strawberry-smothie2.png", "assets/Mocktail2.png",
"assets/Cocktail2.png", "assets/Parfait21.png", "assets/Orange_Juice-2.png", "assets/Beer2.png"];

List<Color> imageColors2 = const [Color(0xfff1e9e9), Color(0xffe4f3c9), Color(0xfffae3d1),
Color(0xffefdbd5), Color(0xfff8ebd6), Color(0xffe3d8d3) ];

class Gridview extends StatelessWidget {
 const  Gridview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MasonryGridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: imagePaths.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
              color: imageColors[index],
              borderRadius: BorderRadius.circular(10),
              image:  DecorationImage (
                  fit: BoxFit.contain,
                  // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                  image: Image.asset(imagePaths[index]).image),
          ),
          height: 200,
        );
      },
    );
  }
}

class GridView2 extends StatelessWidget {
  const GridView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MasonryGridView.count (
      crossAxisCount: 2,
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      itemCount: imagePaths2.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: imageColors2[index],
            borderRadius: BorderRadius.circular(10),
            image:  DecorationImage (
                fit: BoxFit.contain,
                // colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.2), BlendMode.dstATop),
                image: Image.asset(imagePaths2[index]).image),
          ),
          height: 200,
        );
      },



    );
  }
}

