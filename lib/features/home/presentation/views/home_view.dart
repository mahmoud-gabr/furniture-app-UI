import 'package:flutter/material.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/categories_row.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/custom_search_field.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/popular_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        title: Text(
          'Home',
          style: TextStyle(color: kBlack, fontWeight: FontWeight.bold),
        ),
        backgroundColor: kWhite,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your \nSuitable furniture',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            CustomSearchField(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Catagories',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            CategriesRow(),
            SizedBox(
              height: 20,
            ),
            Text(
              'Popular',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            PopularListView(),
          ],
        ),
      ),
    );
  }
}
