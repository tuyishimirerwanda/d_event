import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Theme/theme.dart';
import '../model/event_model.dart';

class EventCategoryList extends StatefulWidget {
  final List<Category> categories;
  final ValueChanged<int> onCategorySelected;

  const EventCategoryList({
    Key? key,
    required this.categories,
    required this.onCategorySelected,
    required int selectedCategoryIndex,
  }) : super(key: key);

  @override
  _EventCategoryListState createState() => _EventCategoryListState();
}

class _EventCategoryListState extends State<EventCategoryList> {
  int selectedCategoryIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int index = 0; index < widget.categories.length; index++)
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.h, horizontal: 50.h),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  if (selectedCategoryIndex == index) {
                    // If the same category is tapped, unselect it
                    selectedCategoryIndex = -1;
                  } else {
                    // Select a new category
                    selectedCategoryIndex = index;
                  }
                });
                widget.onCategorySelected(selectedCategoryIndex);
              },
              child: Container(
                height: 50.h,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: index == selectedCategoryIndex
                        ? MyAppTheme.orangeColor
                        : MyAppTheme.primaryColor,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(20.0),
                  gradient: index == selectedCategoryIndex
                      ? MyAppTheme.selectedcontainerbackground
                      : MyAppTheme.containerbackground,
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.airplane_ticket,
                            color: MyAppTheme.orangeColor,
                          ),
                          SizedBox(
                            width: 5.w,
                          ),
                          Text(
                            widget.categories[index].name,
                            style: MyAppTheme.myTextStyle(
                              fontSize: 16.sp,
                              color: MyAppTheme.whiteColor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        '${widget.categories[index].price.toStringAsFixed(0)} Rwf',
                        style: MyAppTheme.myTextStyle(
                          fontSize: 16.sp,
                          color: MyAppTheme.orangeColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
