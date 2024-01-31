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
      0XFF993000,
      0XFFb23800,
      0XFFcb4100,
      0XFFe54800,
    ],
  ),
  yellow(
    colorValues: [
      0XFF7e6e07,
      0XFF837308,
      0XFF8c7b07,
      0XFFab9300,
      0XFFb69d00,
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
      0xFF2c2a62,
      0xFF2d2b65,
      0xFF2d2b67,
      0xFF302e75,
      0xFF34327f,
      0xFF3e3b96,
    ],
  );

  final List<int> colorValues;

  const ChecklistColor({required this.colorValues});
}
