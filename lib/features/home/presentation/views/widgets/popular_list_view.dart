import 'package:flutter/material.dart';
import 'package:furniture_app/features/home/data/models/furniture_item_model.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/furniture_item.dart';

class PopularListView extends StatelessWidget {
  const PopularListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: FurnitureItem(
              item: FurnitureItemModel(
                des:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took',
                color: Colors.grey,
                image: 'assets/images/1.png',
                name: 'Boogly Chair',
                price: 190,
                rate: 4.0,
              ),
            ),
          );
        },
      ),
    );
  }
}
