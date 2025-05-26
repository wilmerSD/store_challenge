import 'package:app_market_challenge/core/theme/app_colors.dart';
import 'package:app_market_challenge/core/theme/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  final String hintText;
  final void Function() onSubmitted;
  final void Function(String? value) onChanged;
  const CustomSearchBar(
      {required this.hintText,
      required this.onSubmitted,
      required this.onChanged,
      super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.0,
      child: SearchBar(
          elevation: WidgetStateProperty.all(2.0),
          backgroundColor:
              WidgetStateProperty.all(Colors.white),
          leading: Icon(
            Icons.search,
            color: AppColors.textBasic(context),
          ),
          hintStyle: WidgetStateProperty.all(AppTextStyle(context).bold13(
            color: const Color.fromRGBO(121, 121, 121, 64),
          )),
          hintText: hintText,
          textStyle: WidgetStateProperty.all(AppTextStyle(context).bold16(
              fontWeight: FontWeight.w400,
              // color: AppColors.textHeadProject(context)
              )),
          onSubmitted: (_) => onSubmitted(),
          onChanged: (value) => onChanged(value)),
    );
  }
}
