import 'package:flutter/material.dart';
import 'package:ui5/consttants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({
    super.key, 
    required this.score,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: 
        EdgeInsets.symmetric(vertical: 8,horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 7),
            blurRadius: 20,
            color: Color(0xFFD3D3D3).withAlpha(5),
          )
        ],
      ),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          SizedBox(height: 5),
          Text(
            "$score",
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          )
        ],
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:ui5/consttants.dart';

class BookRating extends StatelessWidget {
  final double score;
  const BookRating({super.key, required this.score});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            offset: const Offset(3, 7),
            blurRadius: 20,
            color: const Color(0xFFD3D3D3).withAlpha(50), // Yorqinroq qilindi
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          const Icon(
            Icons.star,
            color: kIconColor,
            size: 15,
          ),
          const SizedBox(height: 5),
          Text(
            score.toStringAsFixed(1), // 4.923 -> 4.9 qilib chiqaradi
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
*/