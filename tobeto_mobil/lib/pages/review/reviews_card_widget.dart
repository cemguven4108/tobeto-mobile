import 'package:flutter/material.dart';
import 'package:tobeto_mobil/core/widgets/shadows.dart';
import 'package:tobeto_mobil/models/firebase_models/review_model.dart';
import 'package:tobeto_mobil/utils/theme/theme_ios.dart';

class ReviewsCard extends StatelessWidget {
  const ReviewsCard({super.key, required this.reviewModel});
  final ReviewModel reviewModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [containerBasicShadow(), containerBasicShadow(), containerBasicShadow()],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              reviewModel.title,
              maxLines: 2,
              overflow: TextOverflow.clip,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.account_tree_rounded,
                color: TobetoDarkColors.mor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
