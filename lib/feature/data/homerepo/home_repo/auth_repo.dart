import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepo {
  SupabaseClient supabase = Supabase.instance.client;

  login({required String email, required String password}) {
    supabase.auth.signInWithPassword(password: password, email: email);
  }

  sign() {}
}
