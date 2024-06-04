import '../database.dart';

class SignUpTable extends SupabaseTable<SignUpRow> {
  @override
  String get tableName => 'SIGN UP';

  @override
  SignUpRow createRow(Map<String, dynamic> data) => SignUpRow(data);
}

class SignUpRow extends SupabaseDataRow {
  SignUpRow(super.data);

  @override
  SupabaseTable get table => SignUpTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email1 => getField<String>('EMAIL1');
  set email1(String? value) => setField<String>('EMAIL1', value);
}
