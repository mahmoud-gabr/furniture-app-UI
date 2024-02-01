import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Material(
        elevation: 10,
        color: kWhite,
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        child: TextField(
          decoration: InputDecoration(
            fillColor: kWhite,
            hintText: 'Search Furniture',
            border: InputBorder.none,
            prefixIcon: Icon(
              Icons.search,
              color: kBlack,
            ),
            suffixIcon: Container(
              decoration: BoxDecoration(
                color: kOrange,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(8),
                  bottomRight: Radius.circular(8),
                ),
              ),
              child: Icon(
                Icons.display_settings,
                color: kWhite,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
