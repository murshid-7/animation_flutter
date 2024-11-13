import 'package:day1/models/acticvity_model.dart';
import 'package:day1/widgets/favourite_widget.dart';
import 'package:day1/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';

class Details extends StatelessWidget {
  final Activity? activity;

  Details({Key? key, this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.black.withOpacity(0.6),
        elevation: 0,
        title: AppText(
          text: 'More Info',
          fontSize: 20,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipRRect(
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(30)),
              child: Hero(
                tag: '${activity!.imageUrl}',
                child: Image.network(
                  activity!.imageUrl!,
                  height: 450,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Card(
              elevation: 2,
              margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ListTile(
                trailing: const FavouriteIcon(),
                title: AppText(
                  text: activity!.name!,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                subtitle: AppText(
                  text: '${activity!.price} Only',
                  fontSize: 18,
                  color: Colors.black,
                  letterSpacing: 1,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18),
              child: AppText(
                text: loremIpsum(words: 120, paragraphs: 2),
                color: Colors.grey[600]!,
                fontSize: 16,
                overflow: TextOverflow.visible,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
