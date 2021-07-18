import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:raro_journal/src/modules/home/home_controller.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';
import 'package:raro_journal/src/shared/constants/app_enums.dart';
import 'package:raro_journal/src/shared/widgets/journal_add_button.dart';
import 'package:raro_journal/src/shared/widgets/journal_app_bar.dart';
import 'package:raro_journal/src/shared/widgets/journal_note_card.dart';
import 'package:raro_journal/src/shared/widgets/journal_search_field.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeController controller = HomeController();
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: AppColors.whiteToPurple,
      ),
      child: Scaffold(
        backgroundColor: AppColors.transparent,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80.0),
          child: JournalAppBar(
            color: colorType.dark,
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 50.0, vertical: 8),
              child: JournalSearchField(
                controller: searchController,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Scrollbar(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 20),
                    child: StaggeredGridView.countBuilder(
                      crossAxisCount: 2,
                      itemCount: controller.listNotes.length,
                      itemBuilder: (BuildContext context, int index) =>
                          JournalNoteCard(
                        title: controller.listNotes[index].title,
                        bodyText: controller.listNotes[index].body,
                        data:
                            controller.listNotes[index].creationDate.toString(),
                        color: controller.listNotes[index].color,
                      ),
                      mainAxisSpacing: 5.0,
                      crossAxisSpacing: 10.0,
                      staggeredTileBuilder: (int index) => StaggeredTile.fit(1),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: JournalAddButton(
          onPressed: () {},
        ),
      ),
    );
  }
}
