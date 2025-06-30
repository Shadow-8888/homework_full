import 'package:flutter/material.dart';
import 'package:ui5/consttants.dart';
import 'package:ui5/screens/details_screen.dart';
//import 'package:ui5/screens/details_screen.dart';
import 'package:ui5/widgets/book_rating.dart';
import 'package:ui5/widgets/reading_card_list.dart';
import 'package:ui5/widgets/two_side_rounded_button.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height*0.1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displayMedium,
                        children: [
                          TextSpan(text: "What are you \nreading"),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          pressRead: (){},
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails:(){
                            Navigator.push(
                              context, 
                              MaterialPageRoute(
                                builder: (context){
                                  return DetailsScreen();
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          pressRead: (){},
                          pressDetails: (){},
                          image: "assets/images/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.8,
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children:[
                              TextSpan(text: "Best of the"),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children: [
                              TextSpan(text: "Continue"),
                              TextSpan(text: "reading...",
                              style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80, 
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withAlpha(84),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Expanded(
                                  child: Padding(
                                    padding: 
                                        EdgeInsets.only(left: 30, right: 20),
                                    child: Row(
                                      children: <Widget>[
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment: 
                                              MainAxisAlignment.end,
                                            crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                "Crushing & Influence",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              Text(
                                                "Gary Wenchuk",
                                                style: TextStyle(
                                                  color: kLightBlackColor,
                                                ),
                                              ),
                                              Align(
                                                alignment: 
                                                  Alignment.bottomRight,
                                                child: Text(
                                                  "Chapter 7 of 10",
                                                  style: TextStyle(
                                                    fontSize: 10,
                                                    color: kLightBlackColor,
                                                  ),
                                                ),
                                              ),
                                              SizedBox(height: 5),
                                            ],
                                          ),
                                        ),
                                        Image.asset(
                                          "assets/images/book-1.png",
                                          width: 55,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: size.width *.65,
                                  decoration: BoxDecoration(
                                    color: kProgressIndicator,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container bestOfTheDayCard(Size size, BuildContext context) {
  return Container(
    margin: EdgeInsets.symmetric(vertical: 20),
    width: double.infinity,
    height: 230, // Balandligini biroz oshirdim
    child: Stack(
      children: <Widget>[
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Container(
            padding: EdgeInsets.only(
              left: 24,
              top: 24,
              right: size.width * 0.3, // 30% o'ng tomonda joy qoldirish
            ),
            height: 190, // Oldingi 185 edi, biroz kattalashtirdim
            decoration: BoxDecoration(
              color: Color(0xFFEAEAEA).withAlpha(06), // Yorqinroq bo‘lishi uchun alpha oshirildi
              borderRadius: BorderRadius.circular(29),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "New York Times Best For 11th March 2020",
                  style: TextStyle(
                    fontSize: 10, // Oldingi 9 edi, biroz kattalashtirdim
                    color: kLightBlackColor,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "How To Win \nFriends & Influence",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 5),
                Text(
                  "Gary Venchuk",
                  style: TextStyle(color: kLightBlackColor),
                ),
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    BookRating(score: 4.9),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        "When the earth was flat and everyone wanted to win the game of the best and people...",
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11, // Oldingi 10 edi, yaxshiroq ko‘rinishi uchun kattalashtirdim
                          color: kLightBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 10,
          top: 10,
          child: Image.asset(
            "assets/images/book-3.png",
            width: size.width * 0.37, // Rasm o‘lchamini moslashtirdim
          ),
        ),
        Positioned(
          bottom: 0, // Tugma pastda chiqishi uchun bottom oshirildi
          right: 0, // O'ng tomonda biroz joy qoldirish
          child: SizedBox(
            height: 40,
            width: size.width * 0.25, // Tugma o‘lchamini to‘g‘ri belgilash
            child: TwoSideRounedButton(
              text: "Read",
              radious: 24,
              press: () {},
            ),
          ),
        ),
      ],
    ),
  );
  }
}

  /*Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: double.infinity,
                  height: 205,
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        bottom: 0,
                        left:0,
                        right: 0,
                        child: Container(
                          padding: EdgeInsets.only(
                            left: 24, 
                            top: 24,
                            right: size.width *35,
                          ),
                          height: 185,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Color(0xFFEAEAEA).withAlpha(45),
                            borderRadius: BorderRadius.circular(29),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "New York Time Best For 11th March 2020",
                                style: TextStyle(
                                  fontSize: 9,
                                  color: kLightBlackColor,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text("How To Win \nFriends & Influence",
                              style: Theme.of(context).textTheme.titleMedium,
                              ),
                              Text(
                                "Gary Venchuk",
                                style: TextStyle(color: kLightBlackColor),
                              ),
                              SizedBox(height: 10),
                              Row(
                                children: <Widget>[
                                  BookRating(score: 4.9),
                                  SizedBox(width: 10),
                                  Expanded(
                                    child: Text(
                                      "When the earth was flat and everyone wanted to win the game of the best and people",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontSize: 10,
                                        color: kLightBlackColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: Image.asset(
                          "assets/images/book-3.png",
                          width: size.width*37,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: SizedBox(
                          height: 40,
                          width: size.width * 3,
                          child: TwoSideRounedButton(
                            text: "Read",
                            radious: 24,
                            press: (){},
                          ),
                        ),
                      ),
                    ],
                  ),
                );
  }
}
*/



/*import 'package:flutter/material.dart';
import 'package:ui5/consttants.dart';
import 'package:ui5/widgets/book_rating.dart';
import 'package:ui5/widgets/reading_card_list.dart';
import 'package:ui5/widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displayMedium,
                        children: const [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          pressRead: () {},
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Placeholder(); // DetailsScreen() o‘rniga qo‘shing
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          pressRead: () {},
                          pressDetails: () {},
                          image: "assets/images/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.8,
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children: const [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children: const [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 33,
                                color: const Color(0xFFD3D3D3).withAlpha(84),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 30),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      const Text(
                                        "Crushing & Influence",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      const Text(
                                        "Gary Wenchuk",
                                        style: TextStyle(
                                          color: kLightBlackColor,
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Chapter 7 of 10",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: kLightBlackColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Image.asset(
                                  "assets/images/book-1.png",
                                  width: 55,
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA).withAlpha(45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(fontSize: 9, color: kLightBlackColor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "How To Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      const BookRating(score: 4.9),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: TwoSideRounedButton(
              text: "Read",
              radious: 24,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
*/

/*import 'package:flutter/material.dart';
import 'package:ui5/consttants.dart';
import 'package:ui5/widgets/book_rating.dart';
import 'package:ui5/widgets/reading_card_list.dart';
import 'package:ui5/widgets/two_side_rounded_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * 0.1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.displayMedium,
                        children: const [
                          TextSpan(text: "What are you \nreading "),
                          TextSpan(
                            text: "today?",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ReadingListCard(
                          pressRead: () {},
                          image: "assets/images/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gary Venchuk",
                          rating: 4.9,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const Placeholder(); // DetailsScreen() o‘rniga qo‘shing
                                },
                              ),
                            );
                          },
                        ),
                        ReadingListCard(
                          pressRead: () {},
                          pressDetails: () {},
                          image: "assets/images/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4.8,
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children: const [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.displayMedium,
                            children: const [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "reading...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: const Offset(0, 10),
                                blurRadius: 33,
                                color: const Color(0xFFD3D3D3).withAlpha(84),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  "Crushing & Influence",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Text(
                                  "Gary Wenchuk",
                                  style: TextStyle(
                                    color: kLightBlackColor,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: Text(
                                    "Chapter 7 of 10",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: kLightBlackColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(height: 10), // Bo‘sh joy qo‘shildi
                                Container(
                                  width: double.infinity,
                                  height: 5, // Progress bar balandligi
                                  decoration: BoxDecoration(
                                    color: Colors.grey[300], // Orqa fon
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: LinearProgressIndicator(
                                      value: 7 / 10, // 7-bo‘lim o‘qilgan
                                      backgroundColor: Colors.grey[300], 
                                      valueColor: const AlwaysStoppedAnimation<Color>(Colors.red),
                                      ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 205,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * 0.35,
              ),
              height: 185,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0xFFEAEAEA).withAlpha(45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "New York Time Best For 11th March 2020",
                    style: TextStyle(fontSize: 9, color: kLightBlackColor),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    "How To Win \nFriends & Influence",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const Text(
                    "Gary Venchuk",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      const BookRating(score: 4.9),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          "When the earth was flat and everyone wanted to win the game of the best and people...",
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 10,
                            color: kLightBlackColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/images/book-3.png",
              width: size.width * 0.37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: TwoSideRounedButton(
              text: "Read",
              radious: 24,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
*/
