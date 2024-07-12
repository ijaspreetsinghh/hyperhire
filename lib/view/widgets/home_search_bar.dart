part of '../pages/homepage.dart';

class HomeSearchBar extends StatelessWidget {
  const HomeSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      key: key,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF6bded9), Color(0xFF3c42bf)],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
                borderRadius: BorderRadius.circular(18)),
            child: TextFormField(
              style: const TextStyle(
                  color: AppColors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
              decoration: InputDecoration(
                fillColor: AppColors.white,
                suffixIcon: const Icon(
                  Icons.search_rounded,
                  size: 28,
                  color: AppColors.purple,
                ),
                filled: true,
                hintText: "검색어를 입력하세요",
                hintStyle: const TextStyle(
                    color: AppColors.demiGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w600),
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none),
              ),
            ),
          ),
        )
      ],
    );
  }
}
