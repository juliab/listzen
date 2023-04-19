import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/domain/checklists/item.dart';
import 'package:success_check/presentation/core/theming/themes.dart';
import 'package:success_check/presentation/routes/app_router.dart';

class ChecklistCard extends StatelessWidget {
  final Checklist checklist;

  const ChecklistCard({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Slidable(
        groupTag: '0',
        endActionPane: ActionPane(
          motion: const ScrollMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {
                AutoRouter.of(context).push(
                  EditChecklistRoute(editedChecklistOption: Some(checklist)),
                );
              },
              icon: Icons.edit,
              label: 'Edit',
              backgroundColor: Colors.green,
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
            SlidableAction(
              onPressed: (context) {
                BlocProvider.of<ChecklistActorBloc>(context)
                    .add(ChecklistActorEvent.deleted(checklist));
              },
              icon: Icons.delete,
              label: 'Delete',
              backgroundColor: const Color(0xFFFE4A49),
              foregroundColor: Colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(20)),
            ),
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            gradient: cardGradient,
            borderRadius: BorderRadius.circular(20),
          ),
          child: InkWell(
            onTap: () {
              AutoRouter.of(context).push(
                EditChecklistRoute(editedChecklistOption: Some(checklist)),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: ListTile(
                title: Text(
                  checklist.name.getOrCrash(),
                  style: const TextStyle(fontSize: 16),
                ),
                trailing: Text(
                    '${checklist.getNumberOfUncompletedItems()} / ${checklist.items.length}'),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ItemDisplay extends StatelessWidget {
  final Item item;

  const ItemDisplay({
    super.key,
    required this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (item.done)
          Icon(
            Icons.check_box,
            color: Theme.of(context).indicatorColor,
          ),
        if (!item.done)
          Icon(
            Icons.check_box_outline_blank,
            color: Theme.of(context).disabledColor,
          ),
        Text(item.name.getOrCrash()),
      ],
    );
  }
}
