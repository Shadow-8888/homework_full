import 'package:abduganiyeva/pages/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<CourseModel> courses=[
      CourseModel(
        name: 'Marketing', 
        count: '17 courses', 
        bgImage:'assets/images/marketing.png',
      ),
      CourseModel(
        name: 'UX Design', 
        count: '25 courses', 
        bgImage:'assets/images/ux_design.png',
      ),
      CourseModel(
        name: 'Photography', 
        count: '18 courses', 
        bgImage:'assets/images/photography.png',
      ),
      CourseModel(
        name: 'Marketing', 
        count: '20 courses', 
        bgImage:'assets/images/business.png',
      ),
      CourseModel(
        name: 'Music', 
        count: '30 courses', 
        bgImage:'assets/images/music.png',
      ),
    ];

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset('assets/icons/menu.svg'),
                    Image.asset('assets/images/user.png'),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  'Hey Alex,',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Find a course you want to learn',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.black45,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  height: 50,
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Row(
                    children: [
                      SvgPicture.asset('assets/icons/search.svg'),
                      const SizedBox(width: 10),
                      Text(
                        'Search for anything',
                        style: TextStyle(color: Colors.grey.shade700),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Categories',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See All',
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                // O'rnatilgan balandlikni aniqlash
                StaggeredGrid.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: [
                    for(int i=0; i<courses.length; i++)
                     _template(i,courses,context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Widget _template(int index, List<CourseModel> courses, BuildContext context){
    final currentCourse=courses[index];
    return GestureDetector(
      onTap: () => Navigator.push(
        context, MaterialPageRoute(builder: (c) =>const  DetailPage())),
                    child: Container(
                      height: index.isOdd ? 250 : 200,
                      width: 100,
                      padding:
                     const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(currentCourse.bgImage),
                        fit: BoxFit.cover,
                      ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            currentCourse.name,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            currentCourse.count,
                            style: const TextStyle(
                              fontSize: 12,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
  }
}




class CourseModel{
  final String name;
  final String count;
  final String bgImage;

  CourseModel({
    required this.name,
    required this.count,
    required this.bgImage
    });

}