import 'package:flutter/material.dart';
import 'package:fruit_juice_ui/staggered-gridview.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            color: Colors.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart),
                color: Colors.black)
          ],
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              const Opacity(
                  opacity: 0.5,
                  child: Text(
                    "Good Evening! ",
                    style: TextStyle(fontSize: 17.0),
                  )),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "What do you want for dinner?",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 300.0,
                height: 60,
                child: TextField(
                    decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0)),
                  focusedBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFf2f2f2))),
                  hintText: "Food, drinks, fruits",
                  suffix: const Icon(Icons.search),
                )),
              ),
              const SizedBox(
                height: 20,
              ),
              
              Expanded(
                child: DefaultTabController(
                    length: 4,
                    child: Column(
                      children: const [
                        TabBar(
                          isScrollable: true,
                          tabs: [
                            Tab(
                              text: "Fruits",
                            ),
                            Tab(
                              text: "Combos",
                            ),
                            Tab(
                              text: "Vegetables",
                            ),
                            Tab(
                              text: "Drinks",
                            ),
                          ],
                          labelColor: Colors.black,
                        ),
                        Expanded(
                            child: TabBarView(children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            child: Gridview(),
                          ),
                          Center(
                            child: Text("data"),
                          ),
                              Center(
                                child: Text("data"),
                              ),
                        Padding(
                            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                            child: GridView2(),
                        ),

                        ]))
                      ],
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
