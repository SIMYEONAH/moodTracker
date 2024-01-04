import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../repos/mood_repo.dart';
import '../repos/user_repo.dart';
import 'mood_model.dart';

class MoodViewModel extends AsyncNotifier<MoodModel> {
  late final MoodRepository _repository;

  @override
  FutureOr<MoodModel> build() {
    _repository = ref.watch(moodRepo);
    return MoodModel.empty();
  }

  Future<void> createMood(
    String uid,
    String mood,
    String content,
    String posttime,
  ) async {
    state = const AsyncValue.loading();
    final moodProfile = MoodModel(
      posttime: posttime,
      uid: uid,
      mood: mood,
      content: content,
      email: ref.read(authRepo).user!.email!,
    );
    await _repository.createMood(moodProfile);
    state = AsyncValue.data(moodProfile);
  }

  Future<void> getMood() async {}
}

final moodProvider =
    AsyncNotifierProvider<MoodViewModel, MoodModel>(() => MoodViewModel());
