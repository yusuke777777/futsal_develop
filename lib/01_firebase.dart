import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

//チーム情報の更新メソッド
void updateTeamInfo({required String documentId,
  required String teamID,
  required String teamName,
  required String memberName,
  required String level,
  required activeLocation,
  required mission,
  required address,
  required imagePath}) {
  FirebaseFirestore.instance
      .collection('TEAM_TBL')
      .doc(documentId)
      .update({
    'TEAM_ID': teamID,
    'TEAM_NAME': teamName,
    'MEMBER_NAME': memberName,
    'LEVEL': level,
    'ACTIVE_LOCATION': activeLocation,
    'MISSION': mission,
    'ADDRESS': address,
    'IMAGE_PATH': imagePath
  });
}

//チーム情報削除メソッド
void deleteTeamInfo(String documentId) {
  FirebaseFirestore.instance.collection('TEAM_TBL').doc(documentId).delete();
}

//チーム情報追加メソッド
void createTeamInfo({
  required String teamID,
  required String teamName,
  required String memberName,
  required String level,
  required activeLocation,
  required mission,
  required address,
  required imagePath}) {
  FirebaseFirestore.instance.collection('TEAM_TBL').add({
    'TEAM_ID': teamID,
    'TEAM_NAME': teamName,
    'MEMBER_NAME':memberName,
    'ACTIVE_LOCATION': activeLocation,
    'MISSION': mission,
    'ADDRESS': address,
    'IMAGE_PATH': imagePath
  });
}


