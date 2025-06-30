import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color(0XFFF5F4EF),
          image: DecorationImage(
            image: AssetImage('assets/images/ux_big.png'),
            alignment: Alignment.topRight,
          ),
        ),
        child:SafeArea(
          bottom: false,
          child: Column(
            children: [
              Padding(






              padding: const 
              EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: SvgPicture.asset(
                      "assets/icons/arrow-left.svg")),
                      SvgPicture.asset("assets/icons/more-vertical.svg"),
                    ],
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Design Thinking',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: <Widget> [
                      SvgPicture.asset("assets/icons/person.svg"),
                      const SizedBox(width: 5),
                      const Text("18k"),
                      const SizedBox(width: 20),
                      SvgPicture.asset("assets/icons/star.svg"),
                      const SizedBox(width: 5),
                      const Text("4.8")
                    ],
                  ),
                  const SizedBox(height: 35),
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: "\$50",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: "\$70",
                          style: TextStyle(
                            decoration: TextDecoration.lineThrough,
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
                 
                 
                 
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    
                    borderRadius: BorderRadius.circular(50),
                    ),
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(50), 
                          ),
                          child: Stack(
                            children: [
                              const  Padding(
                                padding: EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Course Content',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 40),
                                    ContentWidget(
                                      index: '01', 
                                      duration: '5:35 mins', 
                                      name: 'Welkom to the Course',
                                      isFinished: true,
                                    ),
                                    SizedBox(height: 20),
                                    ContentWidget(
                                      index: '02', 
                                      duration: '19:09 mins', 
                                      name: 'Design Thinking - Intro',
                                      isFinished: true,
                                    ),
                                    SizedBox(height: 20),
                                    ContentWidget(
                                      index: '03', 
                                      duration: '12:48', 
                                      name: 'Design Thinking Process',
                                      isFinished: false,
                                    ),
                                    SizedBox(height: 20),
                                    ContentWidget(
                                      index: '04', 
                                      duration: '37:54', 
                                      name: 'Customer Perspective',
                                      isFinished: false,
                                    ),
                                  ],
                                ),
                               ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                height: 100,
                                width: double.infinity,
                                padding: const EdgeInsets.all(14),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(40),
                                  boxShadow: [
                                    BoxShadow(
                                      offset: const Offset(0, 4),
                                      blurRadius: 50,
                                      color: Colors.black.withValues(blue: 1.0)
                                    ),
                                  ],
                                ),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      padding: const EdgeInsets.all(14),
                                      height: 56,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        color: const Color(0XFFFFEDEE),
                                        borderRadius: BorderRadius.circular(40),
                                      ),
                                      child: SvgPicture.asset(
                                        "assets/icons/shopping-bag.svg",
                                      ),
                                    ),
                                    const SizedBox(width: 20),
                                    Expanded(
                                      child: Container(
                                        alignment: Alignment.center,
                                        height: 56,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(40),
                                          color: const Color(0XFF6E8AFA),
                                        ),
                                        child: const Text(
                                           "Buy Now",style:TextStyle(
                                            color: Colors.white,
                                           ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              ),
                            ],

                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ), 
          ),
        ),
      );
    }
  }


class ContentWidget extends StatelessWidget {
  final String index;
  final String duration;
  final String name;
  final bool isFinished;
  const ContentWidget({
    super.key,
    required this.index, 
    required this.duration,
    required this.name,
    required this.isFinished,
  });


  @override
  Widget build(BuildContext context) {
    return Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Text(
                                index,
                                    style: const TextStyle(
                                      fontSize: 32,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                   Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        duration,
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                      Text(
                                        name,
                                        style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: isFinished ? Colors.green : Colors.green.withAlpha((0.5*255).toInt()),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: const Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              );
  }
}