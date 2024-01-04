import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/mood_model.dart';

class MoodRepository {
  final FirebaseFirestore _db = FirebaseFirestore.instance;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> createMood(MoodModel mood) async {
    await _db.collection('users').add(mood.toJson());
  }

  String get moodID => _db.collection('users').doc().id;

  Future<List> getMood() async {
    final data = await _db.collection('users').get();
    List allData = data.docs.map((e) => e.data()).toList();
    List myData = allData
        .where((x) => x['email'] == _firebaseAuth.currentUser!.email)
        .toList();
    print(myData);
    return myData;
  }

  Future<void> removeMood() async {
    await _db.collection('users').doc('E0zbLJ2xj5rJamtDT5rz').delete();
  }
}

final moodRepo = Provider((ref) => MoodRepository());
