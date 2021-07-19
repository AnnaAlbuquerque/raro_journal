import 'package:raro_journal/src/core/models/note.dart';
import 'package:raro_journal/src/shared/constants/app_colors.dart';

class HomeController {
  List<Note> listNotes = [
    Note(
      title: "Don't Forget",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum diam sed augue accumsan, nec tincidunt purus interdum. Duis ac porttitor ipsum, ac ultrices metus. Integer mollis nec ligula ut aliquam. Nulla mattis justo vitae elit tincidunt, nec volutpat sapien maximus. Praesent suscipit malesuada fermentum. Nulla consectetur porta nisl, id dapibus odio tempor ac. Vivamus ullamcorper non lacus nec commodo. Curabitur semper nulla in diam molestie, in consectetur tortor interdum.",
      color: AppColors.pink,
      creationDate: DateTime.now(),
      hasDate: true,
      hasAttchment: true,
      isFavorite: true,
    ),
    Note(
      title: "Metting with stakeholders",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum diam sed augue accumsan, nec tincidunt purus interdum. Duis ac porttitor ipsum, ac ultrices metus. Integer mollis nec ligula ut aliquam. Nulla mattis justo vitae elit tincidunt, nec volutpat sapien maximus. Praesent suscipit malesuada fermentum. Nulla consectetur porta nisl, id dapibus odio tempor ac. Vivamus ullamcorper non lacus nec commodo. Curabitur semper nulla in diam molestie, in consectetur tortor interdum.",
      color: AppColors.yellow,
      creationDate: DateTime.now(),
      hasDate: true,
      hasAttchment: true,
      isFavorite: false,
    ),
    Note(
      title: "Reminders",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum diam sed augue accumsan, nec tincidunt purus interdum. Duis ac porttitor ipsum, ac ultrices metus. Integer mollis nec ligula ut aliquam. Nulla mattis justo vitae elit tincidunt, nec volutpat sapien maximus. Praesent suscipit malesuada fermentum. Nulla consectetur porta nisl, id dapibus odio tempor ac. Vivamus ullamcorper non lacus nec commodo. Curabitur semper nulla in diam molestie, in consectetur tortor interdum.",
      color: AppColors.green,
      creationDate: DateTime.now(),
      hasDate: true,
      hasAttchment: false,
      isFavorite: true,
    ),
    Note(
      title: "Some Ideas",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum diam sed augue accumsan, nec tincidunt purus interdum. Duis ac porttitor ipsum, ac ultrices metus. Integer mollis nec ligula ut aliquam. Nulla mattis justo vitae elit tincidunt, nec volutpat sapien maximus. Praesent suscipit malesuada fermentum. Nulla consectetur porta nisl, id dapibus odio tempor ac. Vivamus ullamcorper non lacus nec commodo. Curabitur semper nulla in diam molestie, in consectetur tortor interdum.",
      color: AppColors.purple,
      creationDate: DateTime.now(),
      hasDate: false,
      hasAttchment: true,
      isFavorite: true,
    ),
    Note(
      title: "Meeting university",
      body:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin elementum diam sed augue accumsan, nec tincidunt purus interdum. Duis ac porttitor ipsum, ac ultrices metus. Integer mollis nec ligula ut aliquam. Nulla mattis justo vitae elit tincidunt, nec volutpat sapien maximus. Praesent suscipit malesuada fermentum. Nulla consectetur porta nisl, id dapibus odio tempor ac. Vivamus ullamcorper non lacus nec commodo. Curabitur semper nulla in diam molestie, in consectetur tortor interdum.",
      color: AppColors.cyan,
      creationDate: DateTime.now(),
      hasDate: false,
      hasAttchment: false,
      isFavorite: false,
    ),
  ];
}
