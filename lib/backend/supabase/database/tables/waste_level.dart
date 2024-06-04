import '../database.dart';

class WasteLevelTable extends SupabaseTable<WasteLevelRow> {
  @override
  String get tableName => 'waste level';

  @override
  WasteLevelRow createRow(Map<String, dynamic> data) => WasteLevelRow(data);
}

class WasteLevelRow extends SupabaseDataRow {
  WasteLevelRow(super.data);

  @override
  SupabaseTable get table => WasteLevelTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  DateTime? get period => getField<DateTime>('period');
  set period(DateTime? value) => setField<DateTime>('period', value);

  int? get nonBiodegradable => getField<int>('non-biodegradable');
  set nonBiodegradable(int? value) => setField<int>('non-biodegradable', value);

  int? get biodegradable => getField<int>('biodegradable');
  set biodegradable(int? value) => setField<int>('biodegradable', value);

  int? get recyclable => getField<int>('recyclable');
  set recyclable(int? value) => setField<int>('recyclable', value);
}
