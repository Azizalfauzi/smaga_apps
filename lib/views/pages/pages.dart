import 'dart:async';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smaga_apps/cubit/auth/auth_cubit.dart';
import 'package:smaga_apps/cubit/jadwal/jadwal_cubit.dart';
import 'package:smaga_apps/cubit/pengumuman/pengumuman_cubit.dart';
import 'package:smaga_apps/models/models.dart';
import 'package:smaga_apps/views/theme/theme_data.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


import '../widget/widget.dart';
part 'login_pages.dart';
part 'onboarding_pages.dart';
part 'splashscreen_pages.dart';
part 'main_page.dart';
part 'scan_absen_page.dart';
part 'home_page.dart';
part 'profile_page.dart';
part 'jadwal_page.dart';
part 'detail_jadwal_page.dart';
part 'detail_pengumuman_page.dart';
