import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/core/utils/app_routers.dart';
import 'package:furniture_app/features/home/data/models/furniture_item_model.dart';
import 'package:go_router/go_router.dart';

class FurnitureItem extends StatelessWidget {
  const FurnitureItem({
    super.key,
    required this.item,
  });
  final FurnitureItemModel item;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRouters.kFurnitureDetailsView,extra: item,)
        
        ;

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
            ),
            width: 180,
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: Image.asset(item.image),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  item.name,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Text(
                      '\$${item.price}',
                      style: TextStyle(
                        color: kOrange,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      color: kOrange,
                    ),
                    Text(
                      '${item.rate}',
                      style: TextStyle(
                        color: kBlack,
                        fontSize: 16,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
