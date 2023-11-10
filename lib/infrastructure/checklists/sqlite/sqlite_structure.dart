const String dbName = "checklist.db";

enum Table {
  checklists(),
  items();
}

enum Column {
  id(type: 'TEXT NOT NULL'),
  name(type: 'TEXT NOT NULL'),
  color(type: 'TEXT NOT NULL'),
  created(type: 'INTEGER NOT NULL'),
  rowid(type: 'INTEGER PRIMARY KEY'),
  done(type: 'INTEGER DEFAULT 0'),
  checklistid(type: 'TEXT NOT NULL');

  const Column({
    required this.type,
  });

  final String type;
}
