import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/core/resources/colors_manager.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';
import 'package:todo_app/core/widgets/custom_circular_icon.dart';
import 'package:todo_app/core/widgets/custom_todo_check_button.dart';
import 'package:todo_app/core/widgets/make_space.dart';

class CustomTodoTile extends StatelessWidget {
  const CustomTodoTile({
    super.key,
    required this.backgroundColor,
    required this.date,
    required this.time,
    required this.todo,
  });
  final Color backgroundColor;
  final String date;
  final String time;
  final String todo;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SizesManager.s16,
        vertical: SizesManager.s8,
      ),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(
          SizesManager.s16,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: CustomTodoCheckButton(),
          ),
          const MakeSpace(
            width: SizesManager.s16,
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          color: ColorsManager.stoneGrey,
                          size: SizesManager.s20,
                          Iconsax.calendar5,
                        ),
                        const MakeSpace(
                          width: SizesManager.s8,
                        ),
                        Text(
                          date,
                          style: TextStyle(
                            color: ColorsManager.stoneGrey,
                            fontSize: SizesManager.s20,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    const MakeSpace(
                      width: SizesManager.s16,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          color: ColorsManager.stoneGrey,
                          size: SizesManager.s20,
                          Iconsax.clock,
                        ),
                        const MakeSpace(
                          width: SizesManager.s8,
                        ),
                        Text(
                          time,
                          style: TextStyle(
                            color: ColorsManager.stoneGrey,
                            fontSize: SizesManager.s20,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const MakeSpace(
                  height: SizesManager.s8,
                ),
                Row(
                  children: [
                    FittedBox(
                      child: Text(
                        todo,
                        style: TextStyle(
                          fontSize: SizesManager.s25,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: CustomCircularIcon(
              icon: Iconsax.more,
            ),
          ),
        ],
      ),
    );
  }
}
