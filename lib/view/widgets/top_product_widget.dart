import 'package:assignment/view/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class TopProduct extends StatelessWidget {
  const TopProduct({
    super.key,
    required this.title,
    required this.imagePath,
    required this.specOne,
    required this.specTwo,
    required this.rating,
    required this.ratingCount,
    required this.tagOne,
    required this.tagTwo,
    required this.rank,
  });
  final String title;
  final String imagePath;
  final String specOne;
  final String specTwo;
  final double rating;
  final int ratingCount;
  final String tagOne;
  final String tagTwo;
  final int rank;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              height: 104,
              width: 104,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColors.demiGrey,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              alignment: AlignmentDirectional.center,
              child: Image.asset(imagePath),
            ),
            Positioned(
              top: 6,
              left: 6,
              child: Stack(
                children: [
                  SvgPicture.asset(
                    'assets/images/icons/crown.svg',
                    height: 15,
                    theme: SvgTheme(
                      currentColor: rank == 1
                          ? const Color(0xffFFD233)
                          : rank == 2
                              ? const Color(0xffa0a0a0)
                              : rank == 3
                                  ? const Color(0xffc8903d)
                                  : AppColors.black,
                    ),
                  ),
                  Positioned(
                    left: 7,
                    top: 3,
                    child: Text(
                      '$rank',
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          color: AppColors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 8,
        ),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 13,
                    color: AppColors.black,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                specOne,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                specTwo,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                    fontSize: 11,
                    color: AppColors.black,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.star_rounded,
                    color: Color(0xffffd233),
                    size: 18,
                  ),
                  Text(
                    rating.toStringAsFixed(2),
                    style: const TextStyle(
                        color: Color(0xffffd233),
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '($ratingCount)',
                    style: const TextStyle(
                        color: AppColors.lightGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w700),
                  )
                ],
              ),
              const SizedBox(
                height: 4,
              ),
              Row(
                children: [
                  TagChip(title: tagOne),
                  const SizedBox(
                    width: 8,
                  ),
                  TagChip(title: tagTwo)
                ],
              )
            ],
          ),
        )
      ],
    ).marginSymmetric(vertical: 12);
  }
}

class TagChip extends StatelessWidget {
  const TagChip({super.key, required this.title, this.fontSize});
  final String title;
  final double? fontSize;
  @override
  Widget build(BuildContext context) {
    return Container(
      key: key,
      decoration: BoxDecoration(
          color: const Color(0xfff0f0f0),
          borderRadius: BorderRadius.circular(5)),
      padding: const EdgeInsets.all(4),
      child: Text(
        title,
        style: TextStyle(
          fontSize: fontSize ?? 10,
          color: AppColors.demiGrey,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
