import 'package:flutter/material.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'home_screen.dart';


class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {

  List<Slide> slides = new List();

  @override
  void initState() {
    super.initState();
    slides.add(
      new Slide(
        title: "RGO APP",
        pathImage: 'assets/icons/stomach.png',
        styleTitle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w600, fontFamily: 'Open Sans',),
        description: 'RGO APP a été conçu pour vous aider à suivre un régime adapté pour lutter contre le rgo',
        styleDescription: TextStyle(color: Colors.white, fontSize: 20.0,fontWeight: FontWeight.w300),
        marginDescription: EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0, bottom: 70.0),
        colorEnd: Color(0xffFFDAB9),
        colorBegin: Color(0xff40E0D0),
        directionColorBegin: Alignment.topLeft,
        directionColorEnd: Alignment.bottomRight,
      ),
    );
    slides.add(
      new Slide(
        title: "ALIMENTATION",
        pathImage: 'assets/icons/vegetable.png',
        styleTitle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w600, fontFamily: 'Open Sans'),
        description: "Grâce à RGO APP, vous saurez quels aliments choisir pour renforcer les défenses de l'oesophage",
        styleDescription: TextStyle(color: Colors.white, fontSize: 20.0,fontFamily: 'Open Sans', fontWeight: FontWeight.w300),
        colorEnd: Color(0xffFFFACD),
        colorBegin: Color(0xffFF6347),
        directionColorBegin: Alignment.topRight,
        directionColorEnd: Alignment.bottomLeft,
      ),
    );
    slides.add(
      new Slide(
        title: "3 NIVEAUX",
        pathImage: 'assets/icons/steps.png',
        styleTitle: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.w600, fontFamily: 'Open Sans'),
        description: "Un système de pastilles sur 3 niveaux pour vous permettre de manger sainement d'un seul coup d'oeil",
        styleDescription: TextStyle(color: Colors.white, fontSize: 20.0, fontFamily: 'Open Sans',fontWeight: FontWeight.w300),
        colorEnd: Color(0xffFFDAB9),
        colorBegin: Color(0xff40E0D0),
        directionColorBegin: Alignment.topCenter,
        directionColorEnd: Alignment.bottomCenter,
        maxLineTextDescription: 4,
      ),
    );
  }
  void onDonePress() {
    // Do what you want
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Colors.grey[200],
      size: 35.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Colors.greenAccent,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      color: Colors.grey[200],
    );
  }

  @override
  Widget build(BuildContext context) {
   return new IntroSlider(

     slides: this.slides,

     // Skip button
     renderSkipBtn: this.renderSkipBtn(),
     colorSkipBtn: Color(0x33000000),
     highlightColorSkipBtn: Color(0xff000000),

     // Next button
     renderNextBtn: this.renderNextBtn(),

     // Done button
     renderDoneBtn: this.renderDoneBtn(),
     onDonePress: this.onDonePress,
     colorDoneBtn: Color(0x33000000),
     highlightColorDoneBtn: Color(0xff000000),

     // Dot indicator
     colorDot: Colors.grey[700],
     colorActiveDot: Colors.grey[200],
     sizeDot: 13.0,

     // Show or hide status bar
     shouldHideStatusBar: true,
     backgroundColorAllSlides: Colors.grey,

   );
  }
}



