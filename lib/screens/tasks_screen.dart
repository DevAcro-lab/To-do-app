import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import '../widgets/categories_row.dart';
import '../widgets/floating_action_button.dart';
import '../widgets/list_view_builder.dart';
import '../widgets/textFormField.dart';

class TasksScreen extends StatelessWidget {
  TasksScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      floatingActionButton: FloatingButton(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 37, vertical: 30),
        child: Column(
          children: [
            TextFormFieldd(),
            const SizedBox(height: 20),
            Neumorphic(
              style: const NeumorphicStyle(
                depth: 20,
                intensity: 0.9,
                // color: Colors.deepPurple,
                disableDepth: false,
              ),
              child: Row(
                children: const [
                  Expanded(
                    flex: 2,
                    child: Image(
                      image: AssetImage('images/docs2.png'),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Text(
                      'Organize your time for more productivity',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: NeumorphicColors.defaultTextColor,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Align(
              alignment: Alignment.centerLeft,
              child: NeumorphicText(
                'Todo Categories',
                style: const NeumorphicStyle(
                  color: Colors.black,
                ),
                textStyle: NeumorphicTextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            RowOfCategories(),
            const SizedBox(height: 10),
            const Divider(height: 10, color: NeumorphicColors.background),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: NeumorphicText(
                "Today's Tasks",
                textStyle: NeumorphicTextStyle(
                    fontSize: 20, fontWeight: FontWeight.w600),
                style: const NeumorphicStyle(
                  color: NeumorphicColors.defaultTextColor,
                  intensity: 0.9,
                ),
              ),
            ),
            Expanded(
              child: TasksListView(),
            ),
          ],
        ),
      ),
    );
  }
}
