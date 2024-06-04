import 'package:supabase_flutter/supabase_flutter.dart' hide Provider;

export 'database/database.dart';

const _kSupabaseUrl = 'https://yvonlrdipsixzgftkiuq.supabase.co';
const _kSupabaseAnonKey =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Inl2b25scmRpcHNpeHpnZnRraXVxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTU3NjI0ODgsImV4cCI6MjAzMTMzODQ4OH0.snhvP0NlKrYSyXzAQbGE_FIY6SMNQ_sQcZkW1hP3j0s';

class SupaFlow {
  SupaFlow._();

  static SupaFlow? _instance;
  static SupaFlow get instance => _instance ??= SupaFlow._();

  final _supabase = Supabase.instance.client;
  static SupabaseClient get client => instance._supabase;

  static Future initialize() => Supabase.initialize(
        url: _kSupabaseUrl,
        anonKey: _kSupabaseAnonKey,
        debug: false,
      );
}
