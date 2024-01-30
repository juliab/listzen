import 'package:auto_route/auto_route.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:listzen/application/checklists/checklist_actor/checklist_actor_bloc.dart';
import 'package:listzen/application/checklists/checklist_edit/checklist_edit_bloc.dart';
import 'package:listzen/domain/checklists/checklist.dart';
import 'package:listzen/domain/checklists/checklist_color.dart';
import 'package:listzen/injection.dart';
import 'package:listzen/presentation/checklists/components/checklist_info_tile.dart';
import 'package:listzen/presentation/checklists/components/checklist_statistics.dart';
import 'package:listzen/presentation/checklists/view_checklist/view_checklist_dialog.dart';
import 'package:listzen/presentation/core/theming/style.dart';
import 'package:listzen/presentation/core/widgets/delete_confirmation_dialog.dart';
import 'package:listzen/presentation/core/widgets/standard_padding.dart';
import 'package:listzen/presentation/routes/app_router.dart';

class ChecklistCard extends StatelessWidget {
  final Checklist checklist;

  const ChecklistCard({
    super.key,
    required this.checklist,
  });

  @override
  Widget build(BuildContext context) {
    return StandardPadding.vertical(
      factor: 0.4,
      child: Slidable(
        groupTag: '0',
        startActionPane: _buildColorActionPane(),
        endActionPane: ActionPane(
          motion: const DrawerMotion(),
          children: [
            EditSlidableAction(checklist: checklist),
            DeleteSlidableAction(checklist: checklist),
          ],
        ),
        child: InkWell(
          onTap: () {
            if (checklist.items.isNotEmpty) {
              showDialog(
                context: context,
                builder: (_) => BlocProvider<ChecklistEditBloc>(
                  create: (context) => getIt<ChecklistEditBloc>()
                    ..add(ChecklistEditEvent.initialized(some(checklist))),
                  child: ViewChecklistDialog(checklist: checklist),
                ),
              );
            } else {
              AutoRouter.of(context).push(
                EditChecklistRoute(editedChecklistOption: Some(checklist)),
              );
            }
          },
          child: ChecklistInfoTile.readOnly(
            color: checklist.color,
            name: checklist.name.getOrCrash(),
            statistics: ChecklistStatistics(checklist: checklist),
          ),
        ),
      ),
    );
  }

  ActionPane _buildColorActionPane() {
    return ActionPane(
      extentRatio: 0.7,
      motion: const DrawerMotion(),
      children: ChecklistColor.values
          .where((color) => color != checklist.color)
          .map(
            (color) => ColorSlidableAction(checklist: checklist, color: color),
          )
          .toList(),
    );
  }
}

class ColorSlidableAction extends StatelessWidget {
  final Checklist checklist;
  final ChecklistColor color;

  const ColorSlidableAction({
    super.key,
    required this.checklist,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SlidableAction(
      onPressed: (context) => context.read<ChecklistEditBloc>()
        ..add(ChecklistEditEvent.initialized(some(checklist)))
        ..add(
          ChecklistEditEvent.colorChanged(
            color: color,
            instantSave: true,
          ),
        ),
      icon: Icons.color_lens,
      backgroundColor: Color(color.colorValues[0]),
      foregroundColor: cardForegroundColor,
      borderRadius: standardBorderRadius,
      padding: StandardPadding.edgeInsetsAll(
        context: context,
        factor: 0.8,
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
      backgroundColor: greenColor,
      foregroundColor: cardForegroundColor,
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
      onPressed: (context) {
        final bloc = context.read<ChecklistActorBloc>();
        showCupertinoDialog(
          context: context,
          builder: (context) => _buildDeleteConfirmationDialog(context, bloc),
        );
      },
      icon: Icons.delete,
      label: 'Delete',
      backgroundColor: redColor,
      foregroundColor: cardForegroundColor,
      borderRadius: cardBorderRadius,
    );
  }

  Widget _buildDeleteConfirmationDialog(
    BuildContext context,
    ChecklistActorBloc bloc,
  ) {
    return DeleteConfirmationDialog(
      title: 'Are you sure?',
      text: 'Checklist "${checklist.name.getOrCrash()}" will be deleted '
          'permanently.\nPlease confirm.',
      onCancel: () => AutoRouter.of(context).pop(),
      onDelete: () {
        bloc.add(ChecklistActorEvent.deleted(checklist));
        AutoRouter.of(context).pop();
      },
    );
  }
}
