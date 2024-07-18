import 'package:app/utils/colors/colors.dart';
import 'package:app/utils/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VariantItem extends StatelessWidget {
  const VariantItem({
    super.key,
    required this.isSelected,
    required this.variantText,
    required this.onTap,
  });

  final String variantText;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 12.h),
        margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 6.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
          color: isSelected ? MyColors.green : MyColors.white,
        ),
        child: Text(
          variantText,
          textAlign: TextAlign.start,
          style: MyTextStyle.caprasimoRegular.copyWith(
            fontSize: 15.sp,
            color: MyColors.black,
          ),
        ),
      ),
    );
  }
}
