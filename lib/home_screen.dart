import 'package:flutter/material.dart';
import 'package:rgoapp/components/category_card.dart';
import 'package:rgoapp/components/hamburger_menu.dart';
import 'package:rgoapp/components/search_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Colors.greenAccent,
        elevation: 3,
      ),
      drawer: HamburgerMenu(),
      body: Stack(
        children: <Widget>[
          Container(
            height: size.height * .45,
            decoration: BoxDecoration(
                color: Colors.greenAccent,
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage("assets/images/undraw_pilates_gpdb.png"
                    )
                )
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 10.0),
                  SearchBar(),
                  SizedBox(height: 20.0,),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: .85,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20,
                      children: <Widget>[
                        CategoryCard(
                          title: "Fruits",
                          imgSrc: "assets/icons/fruits.png",
                          press: ()
                          {

                          },
                        ),
                        CategoryCard(
                          title: "Légumes",
                          imgSrc: "assets/icons/vegetables.png",
                          press: () {

                          },
                        ),
                        CategoryCard(
                          title: "Laitages",
                          imgSrc: "assets/icons/milk.png",
                          press: () {

                          },
                        ),
                        CategoryCard(
                          title: "Viandes",
                          imgSrc: 'assets/icons/meat.png',
                          press: () {},
                        ),
                        CategoryCard(
                          title: "Poissons",
                          imgSrc: "assets/icons/fish.png",
                          press: () {

                          },
                        ),
                        CategoryCard(
                          title: "Épicerie",
                          imgSrc: "assets/icons/grocery-store.png",
                          press: () {

                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
