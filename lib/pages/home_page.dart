import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:todo_app/core/resources/colors_manager.dart';
import 'package:todo_app/core/resources/sizes_manager.dart';
import 'package:todo_app/core/widgets/custom_section_heading.dart';
import 'package:todo_app/core/widgets/custom_todo_tile.dart';
import 'package:todo_app/core/widgets/make_space.dart';
import 'package:todo_app/pages/widgets/home_page_cards.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.iceBlue,
      appBar: AppBar(
        shadowColor: null,
        elevation: SizesManager.s0,
        backgroundColor: ColorsManager.mintGreen,
        title: Column(
          children: [
            Text(
              'Hello Islam,',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: SizesManager.s30,
              ),
            ),
            Text(
              'You have work today',
              style: TextStyle(
                color: ColorsManager.stoneGrey,
                fontWeight: FontWeight.w400,
                fontSize: SizesManager.s20,
              ),
            ),
            const MakeSpace(
              height: SizesManager.s8,
            ),
          ],
        ),
        actions: [
          Icon(
            Iconsax.notification,
          ),
          const MakeSpace(
            width: SizesManager.s16,
          ),
          Icon(
            Iconsax.menu,
          ),
          const MakeSpace(
            width: SizesManager.s20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: SizesManager.s20,
            vertical: SizesManager.s20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomePageCards(),
              const MakeSpace(
                height: SizesManager.s16,
              ),
              CustomSectionHeading(
                text: "Today's Tasks",
              ),
              const MakeSpace(
                height: SizesManager.s16,
              ),
              CustomTodoTile(
                date: "Today",
                time: "9:00 AM",
                todo: "Morning Standup Meeting",
                backgroundColor: ColorsManager.mintGreen,
              ),
              const MakeSpace(
                height: SizesManager.s16,
              ),
              CustomTodoTile(
                date: "Today",
                time: "11:00 AM",
                todo: "Code Review Session",
                backgroundColor: ColorsManager.softYellow,
              ),
              const MakeSpace(
                height: SizesManager.s16,
              ),
              CustomTodoTile(
                date: "Today",
                time: "2:00 PM",
                todo: "Lunch with Team",
                backgroundColor: ColorsManager.pinkBlush,
              ),
              const MakeSpace(
                height: SizesManager.s16,
              ),
              CustomTodoTile(
                date: "Today",
                time: "4:00 PM",
                todo: "Project Planning Meeting",
                backgroundColor: ColorsManager.periwinkleBlue,
              ),
              const MakeSpace(
                height: SizesManager.s16,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Iconsax.add,
        ),
      ),
    );
  }
}
