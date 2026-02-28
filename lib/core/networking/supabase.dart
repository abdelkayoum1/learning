import 'package:supabase/supabase.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Supabasee {
  static String url = 'https://bmfcpiwgbfuvwbyvhlnv.supabase.co';
  static String key = 'sb_publishable_wird2OCgc12UsjDYnQGgMg_Bh5DbL0X';

  static init() async {
    await Supabase.initialize(url: url, anonKey: key);
  }
}
