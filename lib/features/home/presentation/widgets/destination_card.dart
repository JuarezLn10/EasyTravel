import 'package:easy_travel/features/home/domain/destination.dart';
import 'package:flutter/material.dart';

class DestinationCard extends StatelessWidget {
  const DestinationCard({super.key, required this.destination});
  final Destination destination;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(8),
              topRight: Radius.circular(8),
            ),
            child: Stack(
              alignment: AlignmentGeometry.topRight,
              children: [
                Hero(
                tag: destination.id,
                child: Image.network(
                  destination.posterPath,
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: ClipOval(
                    child: Container(
                      color: Theme.of(context).colorScheme.secondary,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                    )
                  ),
                )
                )
              ]
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  destination.title,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(destination.overview, maxLines: 1,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}