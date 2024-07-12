import 'package:assignment/view/pages/cat_details_page.dart';
import 'package:assignment/view/styles/app_colors.dart';
import 'package:assignment/view/widgets/category_title.dart';
import 'package:assignment/view/widgets/top_product_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
part '../widgets/home_search_bar.dart';
part '../widgets/home_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, size) {
      return ListView(
        children: [
          const HomeSearchBar(
            key: Key('home_search_bar'),
          ).marginSymmetric(vertical: 24, horizontal: 16),
          HomeSlider(
            size: size,
            key: const Key('home_carousel'),
          ),
          const Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryTtileWidget(
                    message: '리뷰️  랭킹⭐ top 3',
                    title: '제일 핫한 리뷰를 만나보세요',
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 20,
                    color: AppColors.black,
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: 12,
                  ),
                  TopProduct(
                    imagePath: 'assets/images/products/product_1.jpg',
                    title: 'LG전자 스탠바이미 27ART10AKPL (스',
                    specOne: '• 화면을 이동할 수 있고 전환도 편리하다는',
                    specTwo: '• 스탠바이미는 사랑입니다!️',
                    rating: 4.89,
                    ratingCount: 216,
                    tagOne: 'LG전자',
                    tagTwo: '편리성',
                    rank: 1,
                  ),
                  TopProduct(
                    imagePath: 'assets/images/products/product_2.jpg',
                    title: 'LG전자  울트라HD 75UP8300KNA (스',
                    specOne: '• 화면 잘 나오고... 리모컨 기능 좋습니다.',
                    specTwo: '• 넷플 아마존 등 버튼하나로 바로 접속 되고',
                    rating: 4.36,
                    ratingCount: 136,
                    tagOne: 'LG전자',
                    tagTwo: '고화질',
                    rank: 2,
                  ),
                  TopProduct(
                    imagePath: 'assets/images/products/product_3.jpg',
                    title:
                        '라익미 스마트 DS4001L NETRANGE (스탠드)GX30K WIN10 (SSD 256GB)',
                    specOne:
                        '• 반응속도 및 화질이나 여러면에서도 부족함을  느끼기에는 커녕 이정도에 이 정도 성능이면',
                    specTwo: '• 중소기업TV 라익미 제품을 사용해보았는데 뛰어난 가성비와 더불어',
                    rating: 3.98,
                    ratingCount: 98,
                    tagOne: '라익미',
                    tagTwo: '가성비',
                    rank: 3,
                  )
                ],
              ),
            ],
          ).marginSymmetric(vertical: 20, horizontal: 16),
          const Divider(
            thickness: 14,
            color: AppColors.dividerColor,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CategoryTtileWidget(
                message: '베스트 리뷰어 🏆 Top10',
                title: '골드 계급 사용자들이예요',
              ),
              SizedBox(
                height: 16,
              ),
              CatsImages()
            ],
          ).marginSymmetric(horizontal: 16, vertical: 24),
          const Footer()
        ],
      );
    });
  }
}

class Footer extends StatelessWidget {
  const Footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
        color: AppColors.dividerColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'LOGO Inc.',
            style: TextStyle(
                fontSize: 14,
                color: AppColors.demiGrey,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                '회사 소개',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.demiGrey,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 9,
                width: 1,
                color: const Color(0xffC8C8C8),
              ),
              const Text(
                '인재 채용',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.demiGrey,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 9,
                width: 1,
                color: const Color(0xffC8C8C8),
              ),
              const Text(
                '기술 블로그',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.demiGrey,
                    fontWeight: FontWeight.w500),
              ),
              Container(
                height: 9,
                width: 1,
                color: const Color(0xffC8C8C8),
              ),
              const Text(
                '리뷰 저작권',
                style: TextStyle(
                    fontSize: 12,
                    color: AppColors.demiGrey,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.send_rounded,
                    color: Color(0xffC8C8C8),
                    size: 18,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'review@logo.com',
                    style: TextStyle(
                        color: AppColors.demiGrey,
                        fontSize: 12,
                        fontWeight: FontWeight.w500),
                  )
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
                  padding:
                      const EdgeInsets.symmetric(horizontal: 4, vertical: 0),
                  value: 'KOR',
                  onChanged: (String? newValue) {},
                  items: <String>[
                    'KOR',
                    'ENG',
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
            color: Color(0xffc8c8c8),
          ).marginSymmetric(vertical: 6),
          const Text(
            '@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
            style: TextStyle(
                color: AppColors.demiGrey,
                fontWeight: FontWeight.w500,
                fontSize: 10),
          ),
        ],
      ),
    );
  }
}

class CatsImages extends StatelessWidget {
  const CatsImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          10,
          (index) => Column(
            children: [
              InkWell(
                onTap: () => Get.to(() => CatDetails(
                      catName: 'Name0${index + 1}',
                      catImagePath: 'assets/images/cats/cat_${index + 1}.jpg',
                    )),
                child: Hero(
                  tag: 'Name0${index + 1}',
                  child: CircleAvatar(
                    key: Key(index.toString()),
                    radius: 31,
                    child: Image.asset(
                      'assets/images/cats/cat_${index + 1}.jpg',
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Name0${index + 1}',
                style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.demiGrey,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ).marginOnly(right: 16),
        ),
      ),
    );
  }
}
