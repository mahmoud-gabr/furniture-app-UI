import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/features/home/data/models/categoy_item_model.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/category_item.dart';

class CategriesRow extends StatefulWidget {
  const CategriesRow({super.key});

  @override
  State<CategriesRow> createState() => _CategriesRowState();
}

class _CategriesRowState extends State<CategriesRow> {
  int selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CategoryItem(
              item: CategoryItemModel(
                onTap: () {
                  setState(
                    () {
                      selectedIndex = 0;
                    },
                  );
                },
                index: 0,
                image: selectedIndex == 0
                    ? 'assets/images/chair.png'
                    : 'assets/images/chair2.png',
                color: selectedIndex == 0 ? kOrange : kWhite,
                title: 'Chair',
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: CategoryItem(
              item: CategoryItemModel(
                index: 1,
                image: selectedIndex == 1
                    ? 'assets/images/armchair.png'
                    : 'assets/images/armchair2.png',
                color: selectedIndex == 1 ? kOrange : kWhite,
                title: 'Sofa',
                onTap: () {
                  setState(
                    () {
                      selectedIndex = 1;
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: CategoryItem(
              item: CategoryItemModel(
                index: 2,
                image: selectedIndex == 2
                    ? 'assets/images/bed.png'
                    : 'assets/images/bed2.png',
                color: selectedIndex == 2 ? kOrange : kWhite,
                title: 'Bed',
                onTap: () {
                  setState(
                    () {
                      selectedIndex = 2;
                    },
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: CategoryItem(
              item: CategoryItemModel(
                index: 3,
                image: selectedIndex == 3
                    ? 'assets/images/table.png'
                    : 'assets/images/table2.png',
                color: selectedIndex == 3 ? kOrange : kWhite,
                title: 'Table',
                onTap: () {
                  setState(
                    () {
                      selectedIndex = 3;
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
