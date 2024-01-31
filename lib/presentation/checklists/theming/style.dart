import 'package:flutter/material.dart';

/* Checklist card */
double checklistCardHeight(BuildContext context) {
  return MediaQuery.of(context).size.height > 900 ? 85 : 80;
}
