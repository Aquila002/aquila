import '../database.dart';

class SignInTable extends SupabaseTable<SignInRow> {
  @override
  String get tableName => 'SIGN IN';

  @override
  SignInRow createRow(Map<String, dynamic> data) => SignInRow(data);
}

class SignInRow extends SupabaseDataRow {
  SignInRow(super.data);

  @override
  SupabaseTable get table => SignInTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get email2 => getField<String>('EMAIL2');
  set email2(String? value) => setField<String>('EMAIL2', value);
}
