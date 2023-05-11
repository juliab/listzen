import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:success_check/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:success_check/domain/checklists/checklist.dart';
import 'package:success_check/presentation/checklists/components/checklist_info_tile_component.dart';
import 'package:success_check/presentation/checklists/components/checklist_statistics_component.dart';
import 'package:success_check/presentation/checklists/view_checklist/view_checklist_dialog.dart';
import 'package:success_check/presentation/core/theming/style.dart';
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
            EditSlidableAction(checklist: checklist),
            DeleteSlidableAction(checklist: checklist),
          ],
        ),
        child: InkWell(
          onTap: () => showDialog(
            context: context,
            builder: (_) => ViewChecklistDialog(checklist: checklist),
          ),
          child: ChecklistInfoTile.readOnly(
            name: checklist.name.getOrCrash(),
            statistics: ChecklistStatistics(checklist: checklist),
          ),
        ),
      ),
    );
  }
}

class EditSlidableAction extends StatelessWidget {
  final Checklist checklist;

  const EditSlidableAction({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => AutoRouter.of(context).push(
        EditChecklistRoute(editedChecklistOption: Some(checklist)),
      ),
      icon: Icons.edit,
      label: 'Edit',
      backgroundColor: editActionButtonColor,
      foregroundColor: whiteColorWithOpacity,
      borderRadius: cardBorderRadius,
    );
  }
}

class DeleteSlidableAction extends StatelessWidget {
  final Checklist checklist;

  const DeleteSlidableAction({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => BlocProvider.of<ChecklistActorBloc>(context).add(
        ChecklistActorEvent.deleted(checklist),
      ),
      icon: Icons.delete,
      label: 'Delete',
      backgroundColor: errorColor,
      foregroundColor: whiteColorWithOpacity,
      borderRadius: cardBorderRadius,
    );
  }
}
