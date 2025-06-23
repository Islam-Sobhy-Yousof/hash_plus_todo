import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/core/resources/colors_manager.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';
import 'package:todo_app/core/widgets/custom_card.dart';
import 'package:todo_app/core/widgets/custom_card_row.dart';
import 'package:todo_app/core/widgets/custom_circular_icon.dart';
import 'package:todo_app/core/widgets/make_space.dart';

class HomePageCards extends StatelessWidget {
  const HomePageCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomCard(
                backgroundColor: ColorsManager.mintGreen,
                children: [
                  CustomCircularIcon(
                    subCircleBackground: ColorsManager.mintGreen,
                    icon: Iconsax.notification,
                  ),
                  const MakeSpace(
                    height: SizesManager.s16,
                  ),
                  CustomCardRow(
                    title: 'Today',
                    subTitle: '6',
                  ),
                ],
              ),
            ),
            const MakeSpace(
              width: SizesManager.s8,
            ),
            Expanded(
              child: CustomCard(
                backgroundColor: ColorsManager.softYellow,
                children: [
                  CustomCircularIcon(
                    subCircleBackground: ColorsManager.softYellow,
                    icon: Iconsax.timer,
                  ),
                  const MakeSpace(
                    height: SizesManager.s16,
                  ),
                  CustomCardRow(
                    title: 'Scheduled',
                    subTitle: '5',
                  ),
                ],
              ),
            ),
          ],
        ),
        const MakeSpace(
          height: SizesManager.s16,
        ),
        Row(
          children: [
            Expanded(
              child: CustomCard(
                backgroundColor: ColorsManager.periwinkleBlue,
                children: [
                  CustomCircularIcon(
                    subCircleBackground: ColorsManager.periwinkleBlue,
                    icon: Iconsax.recovery_convert,
                  ),
                  const MakeSpace(
                    height: SizesManager.s16,
                  ),
                  CustomCardRow(
                    title: 'All',
                    subTitle: '14',
                  ),
                ],
              ),
            ),
            const MakeSpace(
              width: SizesManager.s8,
            ),
            Expanded(
              child: CustomCard(
                backgroundColor: ColorsManager.pinkBlush,
                children: [
                  CustomCircularIcon(
                    subCircleBackground: ColorsManager.pinkBlush,
                    icon: Iconsax.warning_2,
                  ),
                  const MakeSpace(
                    height: SizesManager.s16,
                  ),
                  CustomCardRow(
                    title: 'Overdue',
                    subTitle: '3',
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
