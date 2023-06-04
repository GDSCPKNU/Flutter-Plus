import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import '../components/img_assets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movie'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Image.asset(
              ImageAssetPaths.guardian,
              width: 120,
              height: 120,
            ),
            const Text('가디언즈 오브 갤럭시 V3'),
            const Text('한줄평 : 가오갤의 마지막 시리즈라서 그런지 내용을 마무리하는 느낌! 그렇지만 재밌었다'),
            ratingMethod(),
            Image.asset(
              ImageAssetPaths.paris,
              width: 120,
              height: 120,
            ),
            const Text('악마는 프라다를 입는다.'),
            const Text('이것은 제 인생영화 !! '),
            ratingMethod(),
            Image.asset(
              ImageAssetPaths.dream,
              width: 120,
              height: 120,
            ),
            const Text('드림'),
            const Text('가볍게 재밌게 볼 수 있는 영화'),
            ratingMethod(),
            Image.asset(
              ImageAssetPaths.paris,
              width: 120,
              height: 120,
            ),
            const Text('미시즈 해리스 파리에 가다.'),
            const Text('눈이 즐겁고, 힐링되는 영화보고싶으면 추천해용'),
            ratingMethod(),
          ]),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                ' 보고 싶은 영화 ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('인시디어스'),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('귀공자'),
            ),
            ListTile(
              leading: Icon(Icons.movie),
              title: Text('리바운드'),
            ),
            Text(
              ' 추천 영화 ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            Text('다들 인생영화가 있으신가요 ?? 재밌는 영화 추천부탁드려요😀')
          ],
        ),
      ),
    );
  }

  RatingBar ratingMethod() {
    return RatingBar.builder(
      initialRating: _rating,
      minRating: 1,
      itemCount: 5,
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        setState(() {
          _rating = rating;
        });
      },
    );
  }
}
