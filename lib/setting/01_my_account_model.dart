import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import './../common/01_convert_error_message.dart';

class MyAccountModel extends ChangeNotifier {
  late bool isLoading;
  late bool isSubmitting;
  late FirebaseAuth auth;
  late String mail;
  late String teamName;
  var teamNameCtl = TextEditingController();
  late String memberName;
  var memberNameCtl = TextEditingController();
  late String level;
  var levelCtl = TextEditingController();
  late String activeLocation;
  var activeLocationCtl = TextEditingController();
  late String mission;
  var missionCtl = TextEditingController();
  late String address;
  var addressCtl = TextEditingController();

  MyAccountModel() {
    this.auth = FirebaseAuth.instance;
    this.isLoading = false;
    this.isSubmitting = false;
    this.mail = this.auth.currentUser!.email!;
    init();
    notifyListeners();
  }

  Future<void> init() async {
    startLoading();
    // this.packageInfo = await PackageInfo.fromPlatform();
    // this.version = packageInfo.version;

    DocumentSnapshot _userDoc = await FirebaseFirestore.instance
        .collection('TEAM_TBL')
        .doc('${this.auth.currentUser!.uid}')
        .get();
    this.teamName = _userDoc.get('TEAM_NAME');
    this.teamNameCtl =new TextEditingController(text: teamName);
    this.memberName = _userDoc.get('MEMBER_NAME');
    this.memberNameCtl =new TextEditingController(text: memberName);
    this.level = _userDoc.get('LEVEL');
    this.levelCtl = new TextEditingController(text: level);
    this.activeLocation = _userDoc.get('ACTIVE_LOCATION');
    this.activeLocationCtl = new TextEditingController(text: activeLocation);
    this.mission = _userDoc.get('MISSION');
    this.missionCtl = new TextEditingController(text: mission);
    this.address = _userDoc.get('ADDRESS');
    this.addressCtl = new TextEditingController(text: address);

    notifyListeners();
    endLoading();
  }

  Future<void> fetchMyAccount() async {
    final firebaseUser = FirebaseAuth.instance.currentUser;
    this.mail = firebaseUser!.email!;
    notifyListeners();
  }

  Future<void> signOut() async {
    try {
      await FirebaseAuth.instance.signOut();
    } on FirebaseAuthException catch (e) {
      print('${e.code}: $e');
      throw (convertErrorMessage(e.code));
    }
  }

  Future<void> updateTeamInfo() async {
    startSubmitting();
    // Firestore のユーザー情報を更新する
    await FirebaseFirestore.instance
        .collection('TEAM_TBL')
        .doc('${this.auth.currentUser!.uid}')
        .update(
      {
        'TEAM_NAME':teamNameCtl.text,
        'MEMBER_NAME':memberNameCtl.text,
        'LEVEL':levelCtl.text,
        'ACTIVE_LOCATION':activeLocationCtl.text,
        'MISSION':missionCtl.text,
        'ADDRESS':addressCtl.text
      },
    );


    await init();

    endSubmitting();
    notifyListeners();
  }

  void startLoading() {
    this.isLoading = true;
    notifyListeners();
  }

  void endLoading() {
    this.isLoading = false;
    notifyListeners();
  }

  void startSubmitting() {
    this.isSubmitting = true;
    notifyListeners();
  }

  void endSubmitting() {
    this.isSubmitting = false;
    notifyListeners();
  }
}