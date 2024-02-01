import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:furniture_app/constants.dart';
import 'package:furniture_app/features/home/data/models/furniture_item_model.dart';
import 'package:furniture_app/features/home/presentation/views/widgets/color_palleta.dart';

class FurnitureDetailsView extends StatelessWidget {
  const FurnitureDetailsView({super.key, required this.itemModel});
  final FurnitureItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0,
        iconTheme: IconThemeData(color: kBlack),
        title: Text(
          itemModel.name,
          style: TextStyle(color: kBlack),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                Center(
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      color: kOrange,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
                Center(
                  child: Image.asset(
                    itemModel.image,
                    width: 370,
                    height: 370,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  itemModel.name,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: kBlack,
                  ),
                ),
                RatingBar.builder(
                  initialRating: itemModel.rate,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemSize: 20,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: kOrange,
                  ),
                  onRatingUpdate: (rating) {},
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              itemModel.des,
              style: TextStyle(color: kGrey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              'Color',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: kBlack,
              ),
            ),
            const ColorPalleta(),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: SizedBox(
                width: width * .9,
                height: 65,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(kOrange),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(24),
                        ),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Add to Cart          \$${itemModel.price.round()}',
                          style: TextStyle(
                            fontSize: 24,
                            color: kWhite,
                          ),
                        )
                      ],
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
