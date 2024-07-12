import 'package:assignment/view/styles/app_colors.dart';
import 'package:assignment/view/widgets/top_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class CatDetails extends StatelessWidget {
  const CatDetails(
      {super.key, required this.catName, required this.catImagePath});
  final String catName;
  final String catImagePath;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 8,
        shadowColor: AppColors.black.withOpacity(.15),
        surfaceTintColor: AppColors.white,
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              '랭킹 1위',
              style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: AppColors.demiGrey),
            ),
            Text(
              '베스트 리뷰어',
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black),
            )
          ],
        ),
      ),
      body: SafeArea(
          child: LayoutBuilder(
        builder: (context, constraints) => ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Hero(
              tag: catName,
              child: CircleAvatar(
                radius: 60,
                child: Image.asset(
                  catImagePath,
                  height: 120,
                  width: 120,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              catName,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/icons/crown.svg',
                  height: 15,
                  theme: const SvgTheme(currentColor: Color(0xffFFD233)),
                ),
                const Text(
                  '골드',
                  style: TextStyle(
                      color: Color(0xffFFD233),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Flexible(
                  child: TagChip(
                    title: '조립컴 업체를 운영하며 리뷰를 작성합니다.',
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 14,
              color: AppColors.dividerColor,
            ).marginSymmetric(vertical: 12),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Row(
                      children: [
                        Text(
                          '작성한 리뷰',
                          style: TextStyle(
                              color: AppColors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '총 35개',
                          style: TextStyle(
                              color: AppColors.demiGrey,
                              fontSize: 12,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(
                          color: AppColors.demiGrey,
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                          child: DropdownButton<String>(
                        isDense: true,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 4, vertical: 0),
                        value: '최신순',
                        onChanged: (String? newValue) {},
                        items: <String>[
                          '최신순',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          );
                        }).toList(),
                      )),
                    ),
                  ],
                ),
                const Divider(
                  color: AppColors.dividerColor,
                ),
                Row(
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
                      child: Image.asset('assets/images/products/amd.png'),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const Flexible(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'AMD 라이젠 5 5600X 버미어',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color: AppColors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            '정품 멀티팩',
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 13,
                                color: AppColors.black,
                                fontWeight: FontWeight.w500),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                size: 24,
                                color: Color(0xffFFD233),
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 24,
                                color: Color(0xffFFD233),
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 24,
                                color: Color(0xffFFD233),
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 24,
                                color: Color(0xffFFD233),
                              ),
                              Icon(
                                Icons.star_rounded,
                                size: 24,
                                color: Color(0xfff0f0f0),
                              ),
                              SizedBox(
                                width: 4,
                              ),
                              Text(
                                '4.00',
                                style: TextStyle(
                                    fontSize: 14,
                                    color: AppColors.black,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ).marginSymmetric(vertical: 12),
                const Divider(
                  color: AppColors.dividerColor,
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CircleAvatar(
                              radius: 17,
                              child: Image.asset(
                                catImagePath,
                              ),
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  catName,
                                  style: const TextStyle(
                                      fontSize: 12,
                                      color: AppColors.black,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.star_rounded,
                                      size: 10,
                                      color: Color(0xffFFD233),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 10,
                                      color: Color(0xffFFD233),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 10,
                                      color: Color(0xffFFD233),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 10,
                                      color: Color(0xffFFD233),
                                    ),
                                    Icon(
                                      Icons.star_rounded,
                                      size: 10,
                                      color: Color(0xfff0f0f0),
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      '2022.12.09',
                                      style: TextStyle(
                                          fontSize: 10,
                                          color: AppColors.demiGrey,
                                          fontWeight: FontWeight.w400),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/save.svg',
                          height: 18,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Text(
                            '“가격 저렴해요”',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: AppColors.demiGrey,
                            ),
                          ).marginOnly(right: 16),
                          const Text(
                            '“CPU온도 고온”',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: AppColors.demiGrey,
                            ),
                          ).marginOnly(right: 16),
                          const Text(
                            '“서멀작업 가능해요”',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: AppColors.demiGrey,
                            ),
                          ).marginOnly(right: 16),
                          const Text(
                            '“게임 잘 돌아가요”',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w700,
                              color: AppColors.demiGrey,
                            ),
                          ).marginOnly(right: 16),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/thunder.svg',
                          theme:
                              const SvgTheme(currentColor: Color(0xff3E3DC5)),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Text(
                            '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                            style: TextStyle(
                                color: Color(0xff616161),
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        const SizedBox(
                          width: 8,
                        ),
                        SvgPicture.asset(
                          'assets/images/icons/thunder.svg',
                          theme:
                              const SvgTheme(currentColor: AppColors.demiGrey),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Expanded(
                          child: Text(
                            '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                            style: TextStyle(
                                color: Color(0xff616161),
                                fontWeight: FontWeight.w500,
                                fontSize: 12),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            'assets/images/sample_reviews/review_image_1.jpg',
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            'assets/images/sample_reviews/review_image_3.jpg',
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                          ),
                          clipBehavior: Clip.hardEdge,
                          child: Image.asset(
                            'assets/images/sample_reviews/review_image_3.jpg',
                          ),
                        )
                      ],
                    ).marginSymmetric(horizontal: 16),
                    const Divider(
                      thickness: 1,
                      color: AppColors.dividerColor,
                    ).marginOnly(top: 12, bottom: 4),
                    Row(
                      children: [
                        SvgPicture.asset(
                          'assets/images/icons/chat.svg',
                          height: 20,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        const Text(
                          '댓글 달기..',
                          style: TextStyle(
                              fontSize: 10,
                              color: AppColors.demiGrey,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ],
            ).marginSymmetric(horizontal: 16),
          ],
        ),
      )),
    );
  }
}
