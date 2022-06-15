import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:smaga_apps/models/models.dart';
import 'package:smaga_apps/services/services.dart';

part 'jadwal_state.dart';

class JadwalCubit extends Cubit<JadwalState> {
  JadwalCubit() : super(JadwalInitial());
  void jadwalFetch() async {
    try {
      emit(JadwalLoading());

      List<JadwalModel> result =
          await JadwalServices().fetchJadwal();

      emit(JadwalGetSuccess(result));
    } catch (e) {
      emit(JadwalGetFailed(e.toString()));
    }
  }
}
