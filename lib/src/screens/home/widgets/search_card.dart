import 'package:flutter/material.dart';
import 'package:ticket_app/src/screens/home/widgets/search_modal.dart';
import 'package:ticket_app/src/styles/colors.dart';
import 'package:ticket_app/src/styles/fonts.dart';

class HomeScreenSearchCard extends StatelessWidget {
  const HomeScreenSearchCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.0),
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          useSafeArea: true,
          showDragHandle: true,
          builder: (BuildContext context) {
            return const HomeScreenSearchModal();
          },
        );
      },
      child: Ink(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Theme.of(context).colorScheme.surface,
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Card(
            color: AppColors.grey4,
            child: Padding(
              padding: EdgeInsets.fromLTRB(8.0, 16.0, 16.0, 16.0),
              child: Row(
                children: [
                  Icon(Icons.search_rounded, size: 24.0),
                  SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Минск', style: AppFonts.text1),
                        Divider(color: AppColors.grey5),
                        Text('Куда', style: AppFonts.text1),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
