import 'package:day1/models/acticvity_model.dart';
import 'package:day1/screens/details_page.dart';
import 'package:day1/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  final List<Activity> Destinations = [
    Activity(
      name: 'American package',
      imageUrl:
          'https://plus.unsplash.com/premium_photo-1664303000625-9da917c7fcfe?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MXx8fGVufDB8fHx8fA%3D%3D',
      location: 'America',
      price: '\$1900',
    ),
    Activity(
      name: 'France package',
      imageUrl:
          'https://images.unsplash.com/photo-1723387046130-191915c3ba2b?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8M3x8fGVufDB8fHx8fA%3D%3D',
      location: 'France',
      price: '\$1100',
    ),
    Activity(
      name: 'Iceland package',
      imageUrl:
          'https://images.unsplash.com/photo-1723220217566-f79c2b6adb46?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NHx8fGVufDB8fHx8fA%3D%3D',
      location: 'Iceland',
      price: '\$1800',
    ),
    Activity(
      name: 'India package',
      imageUrl:
          'https://images.unsplash.com/photo-1723013082698-9401b84c2ab6?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8NXx8fGVufDB8fHx8fA%3D%3D',
      location: 'India',
      price: '\$500',
    ),
    Activity(
      name: 'Japan package',
      imageUrl:
          'https://images.unsplash.com/photo-1723375383253-7171af1d398f?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxleHBsb3JlLWZlZWR8MTN8fHxlbnwwfHx8fHw%3D',
      location: 'Japan',
      price: '\$800',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[400],
        title: AppText(
          text: 'Destinations',
          fontSize: 24,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TweenAnimationBuilder(
              duration: const Duration(seconds: 3),
              tween: Tween<double>(begin: 0, end: 1),
              builder: (context, value, Widget? child) {
                return Opacity(
                  opacity: value,
                  child: Padding(
                    padding: EdgeInsets.only(top: value * 40),
                    child: child,
                  ),
                );
              },
              child: AppText(
                text: 'Pick Your \nFavorite Destination',
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(10),
            Expanded(
              child: ListView.builder(
                itemCount: Destinations.length,
                itemBuilder: (context, index) {
                  Activity activity = Destinations[index];
                  return packageCard(context, activity);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget packageCard(BuildContext context, Activity activity) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Details(activity: activity),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(15),
        ),
        child: SizedBox(
          height: 110,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Hero(
                  tag: '${activity.imageUrl}',
                  child: Image.network(
                    activity.imageUrl!,
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppText(
                        text: activity.name!,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      const SizedBox(height: 8),
                      AppText(
                        text: activity.location!,
                        color: Colors.white70,
                      ),
                      AppText(
                        text: activity.price!,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.amberAccent,
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
