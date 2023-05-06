import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';

import 'package:flutter/material.dart';


void main() => runApp ( const BottomBar() );
class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

   @override
   _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return MoltenBottomNavigationBar(
      selectedIndex: _selectedIndex,

      barColor: Colors.white,
        borderRaduis: const BorderRadius.vertical(
          top: Radius.circular(20),
        ),
      domeCircleColor: Colors.green.shade100,
      onTabChange:  (clickedIndex) {
     setState(() {
      _selectedIndex = clickedIndex;
     });
      },
    tabs:  [
  MoltenTab(icon: const Icon(Icons.search,color: Colors.grey, ),

  ),

    MoltenTab(icon: const Icon(Icons.thumb_up, color: Colors.grey,),
    ),
    MoltenTab(icon: const Icon(Icons.shopping_cart,color: Colors.grey,),),
   MoltenTab(icon: const Icon(Icons.person, color: Colors.grey,), ),
      ],
    );

  }}





