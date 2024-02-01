import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/features/home/data/models/categoy_item_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.item});
  final CategoryItemModel item;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        item.onTap();
      },
      child: Material(
        elevation: 10,
        color: item.color,
        borderRadius: BorderRadius.circular(8),
        child: SizedBox(
          height: 105,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                item.image,
                height: 45,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                item.title,
                style: TextStyle(
                  color: item.color == kOrange ? kWhite : kBlack,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
