enum ChecklistColor {
  cherry(
    colorValues: [
      0XFF62041c,
      0XFF7a1325,
      0XFF9d1524,
    ],
  ),
  orange(
    colorValues: [
      0XFFE95C15,
      0XFFEE7E16,
      0XFFF3981B,
    ],
  ),
  yellow(
    colorValues: [
      0XFFCDA027,
      0XFFD7AA34,
      0XFFE3B63F,
      0XFFEBBE49,
      0XFFF3C851,
    ],
  ),
  teal(
    colorValues: [
      0xFF17805D,
      0xFF02797A,
      0xFF218F85,
      0xFF32A293,
    ],
  ),
  blue(
    colorValues: [
      0xFF003867,
      0xFF1B5582,
      0xFF36719C,
    ],
  ),
  violet(
    colorValues: [
      0xFF320164,
      0xFF4A277d,
      0xFF7358B8,
    ],
  );

  final List<int> colorValues;

  const ChecklistColor({required this.colorValues});
}
