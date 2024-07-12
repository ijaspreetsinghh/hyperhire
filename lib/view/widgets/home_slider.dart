part of '../pages/homepage.dart';

class HomeSlider extends StatefulWidget {
  const HomeSlider({super.key, required this.size});
  final BoxConstraints size;
  @override
  State<HomeSlider> createState() => _HomeSliderState();
}

class _HomeSliderState extends State<HomeSlider> {
  final bannerItems = [
    Image.asset('assets/images/banner/card_1.jpg'),
    Image.asset('assets/images/banner/card_2.jpg'),
    Image.asset('assets/images/banner/card_3.jpg'),
    Image.asset('assets/images/banner/card_4.jpg'),
  ];

  final PageController _pageController = PageController(initialPage: 1000);
  RxInt pageIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      key: widget.key,
      width: widget.size.maxWidth,
      child: AspectRatio(
        aspectRatio: 360 / 220,
        child: Stack(
          children: [
            PageView.builder(
              controller: _pageController,
              onPageChanged: (value) {
                pageIndex.value = value.round() % bannerItems.length;
              },
              itemBuilder: (context, index) =>
                  bannerItems[index % bannerItems.length],
            ),
            Positioned(
              bottom: 12,
              left: (widget.size.maxWidth / 2) - 34,
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SliderIndex(
                      index: 0,
                      key: const Key('index_0'),
                      currentIndex: pageIndex,
                    ),
                    SliderIndex(
                      index: 1,
                      key: const Key('index_1'),
                      currentIndex: pageIndex,
                    ),
                    SliderIndex(
                      index: 2,
                      key: const Key('index_2'),
                      currentIndex: pageIndex,
                    ),
                    SliderIndex(
                      index: 3,
                      key: const Key('index_3'),
                      currentIndex: pageIndex,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SliderIndex extends StatelessWidget {
  const SliderIndex(
      {super.key, required this.index, required this.currentIndex});
  final int index;

  final RxInt currentIndex;
  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        key: key,
        height: 8,
        margin: const EdgeInsets.symmetric(horizontal: 3),
        width: currentIndex.value == index ? 20 : 8,
        decoration: BoxDecoration(
          color: currentIndex.value == index
              ? AppColors.white
              : AppColors.white.withOpacity(.5),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
    );
  }
}
