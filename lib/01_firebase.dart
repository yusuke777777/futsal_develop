import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class firebaseMethod {
//チーム情報の更新メソッド
  void updateTeamInfo({
    required String documentId,
    required String teamID,
    required String teamPass,
    required String teamName,
    required String memberName,
    required String level,
    required activeLocation,
    required mission,
    required address,
  }) {
    FirebaseFirestore.instance.collection('TEAM_TBL').doc(documentId).update({
      'TEAM_ID': teamID,
      'TEAM_PASS': teamPass,
      'TEAM_NAME': teamName,
      'MEMBER_NAME': memberName,
      'LEVEL': level,
      'ACTIVE_LOCATION': activeLocation,
      'MISSION': mission,
      'ADDRESS': address
    });
  }

//チーム情報削除メソッド
  void deleteTeamInfo(String documentId) {
    FirebaseFirestore.instance.collection('TEAM_TBL').doc(documentId).delete();
  }

//チーム情報追加メソッド
  Future<void> createTeamInfo(
      {required String teamId,
      required String teamPass,
      required String teamName,
      required String memberName,
      required String level,
      required activeLocation,
      required mission,
      required address}) async {
    await FirebaseFirestore.instance.collection('TEAM_TBL').add({
      'TEAM_ID': teamId,
      'TEAM_PASS': teamPass,
      'TEAM_NAME': teamName,
      'MEMBER_NAME': memberName,
      'ACTIVE_LOCATION': activeLocation,
      'MISSION': mission,
      'ADDRESS': address
    });
  }

//   //ログインメソッド
  Future<bool> teamLogin(
      {required String teamId, required String teamPassWord}) async {
    Query _query =
    FirebaseFirestore.instance
        .collection('TEAM_TBL')
        .where('TEAM_ID', isEqualTo: teamId);
    bool status = false;
   if(_query.get() == teamId) {
     status = true;
   }
    return status;
  }
}
