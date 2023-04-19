import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:success_check/presentation/checklists/edit_checklist/misc/item_presentation_classes.dart';

extension FormItemsX on BuildContext {
  List<ItemPrimitive> get formItems =>
      Provider.of<FormItems>(this, listen: false).value;

  set formItems(List<ItemPrimitive> value) =>
      Provider.of<FormItems>(this, listen: false).value = value;
}
