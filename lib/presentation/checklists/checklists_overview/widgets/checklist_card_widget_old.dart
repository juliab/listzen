import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart';

import 'package:success_check/domain/checklists/checklist.dart';

import 'package:success_check/domain/checklists/item.dart';

import 'package:success_check/presentation/routes/router.gr.dart';

class ChecklistCard extends StatelessWidget {
  final Checklist checklist;

  const ChecklistCard({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          AutoRouter.of(context).push(
            ChecklistFormPageRoute(editedChecklistOption: Some(checklist)),
          );
        },
        onLongPress: () {
          final checklistActorBloc =
              BlocProvider.of<ChecklistActorBloc>(context);
          _showDeletionDialog(context, checklistActorBloc);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                checklist.name.getOrCrash(),
                style: const TextStyle(fontSize: 18),
              ),
              if (checklist.items.isNotEmpty) ...[
                const SizedBox(
                  height: 4,
                ),
                Column(
                  children: [
                    ...checklist.items.map(
                      (item) => ItemDisplay(
                        item: item,
                      ),
                    ),
                  ],
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  void _showDeletionDialog(BuildContext context, ChecklistActorBloc bloc) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Selected checklist:'),
            content: Text(
              checklist.name.getOrCrash(),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {
                  bloc.add(ChecklistActorEvent.deleted(checklist));
                  Navigator.pop(context);
                },
                child: const Text('DELETE'),
              ),
            ],
          );
        });
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
