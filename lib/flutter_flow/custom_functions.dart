import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getImageAlphabetASL(String? letter) {
  // it is a fact that the link https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_A.jpg?alt=media&token=d2b4e9cd-0955-4ee2-b712-d1c6c832cf35 is related to the letter A. when the letter A is input to this function, I want to get back that link, and so on for other link-letter pairs I will add later.
  const Map<String, String> alphabetImages = {
    'A':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_A.jpg?alt=media&token=d2b4e9cd-0955-4ee2-b712-d1c6c832cf35',
    // Add more letter-image pairs here
    'B':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_B.jpg?alt=media&token=a9b57ac7-b851-4669-a932-6e3c8e6d0aca',
    'C':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_C.jpg?alt=media&token=3c15dee7-43e5-4744-acee-d3318b3cc889',
    'D':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_D.jpg?alt=media&token=ed79e4d5-97cf-4cab-8f32-a50a0a3a7045',
    'E':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_E.jpg?alt=media&token=ef14341f-56b6-4e48-a070-c73e9d7c5f48',
    'F':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_F.jpg?alt=media&token=6616b603-9ebc-405d-aa46-487c1dd1745c',
    'G':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_G.jpg?alt=media&token=30f5616d-c768-44a5-96b4-e5221f547591',
    'H':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_H.jpg?alt=media&token=ce6c57cf-ea60-4c73-a605-01ba3b9c1d54',
    'I':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_I.jpg?alt=media&token=80df0bc8-fe31-4036-9eb0-9bf2028575a9',
    // 'J' belongs to mp4 function
    // update: gif version of mp4s accepted by FF image widgets
    'J':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_J.gif?alt=media&token=212166c3-f529-4a3c-9fe2-c095c32f9076',
    'K':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_K.jpg?alt=media&token=cc1340d5-c133-40a4-a55e-d4f70e054c0c',
    'L':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_L.jpg?alt=media&token=e3ba8203-e6d5-40d0-a198-27288986248c',
    'M':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_M.jpg?alt=media&token=0d29f75a-8397-4d46-8998-b91636f307b0',
    'N':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_N.jpg?alt=media&token=3227a81a-dccd-4a09-a8c1-5065fd1e2f87',
    'O':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_O.jpg?alt=media&token=20b6bd93-c8a0-46b5-abb2-70b56bf19928',
    'P':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_P.jpg?alt=media&token=950c2077-1c48-49b2-b892-d8bfb8987b9a',
    'Q':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_Q.jpg?alt=media&token=25ff9fda-b02e-48f7-8f6b-82396f14c17b',
    'R':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_R.jpg?alt=media&token=61d3fab2-7d0d-4a89-8195-22018ad511e8',
    'S':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_S.jpg?alt=media&token=779e2100-4b47-4013-a617-36441e173f00',
    'T':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_T.jpg?alt=media&token=b72b69e4-6137-48e8-aa1e-1a1588e45eae',
    'U':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_U.jpg?alt=media&token=6cd2c443-2948-4d3f-8131-f7f57e61aff3',
    'V':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_V.jpg?alt=media&token=9c4d9db6-d181-4661-8c5c-0602ea0f0e5f',
    'W':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_W.jpg?alt=media&token=b19a2aea-6398-4e89-a34c-1691a640d2c6',
    'X':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_X.jpg?alt=media&token=bf540dec-9bb7-4d3c-ac3a-152b24861760',
    'Y':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_Y.jpg?alt=media&token=a69dc0f1-8e7a-4631-b7ef-0756210f10cf',
    // 'Z' belongs to mp4 function
    // update: nevermind, see above  :)
    'Z':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_Z.gif?alt=media&token=9af7ec00-a71c-44da-97fe-c82d51bcd5f1'
  };

  return alphabetImages[letter?.toUpperCase()];
}

String? getImageAlphabetBSL(String? letter) {
  // it is a fact that the link https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/asl%2Falphabet-1%2FASL_A.jpg?alt=media&token=d2b4e9cd-0955-4ee2-b712-d1c6c832cf35 is related to the letter A. when the letter A is input to this function, I want to get back that link, and so on for other link-letter pairs I will add later.
  const Map<String, String> alphabetImages = {
    'A':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_A.jpg?alt=media&token=de89cc04-d20a-488c-a33d-b10efe02f3bb',
    // Add more letter-image pairs here
    'B':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_B.jpg?alt=media&token=667fb6ff-52ad-4f81-a1b7-652face10ed4',
    'C':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_C.jpg?alt=media&token=f65cdbd5-383b-4b9b-8af1-d0e97a1c96d6',
    'D':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_D.jpg?alt=media&token=67d6d144-bdab-40e7-87af-f745c31e7820',
    'E':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_E.jpg?alt=media&token=0a05c85a-94ff-4143-a269-82e19842c6c5',
    'F':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_F.jpg?alt=media&token=77c14fd0-73c5-4470-8b9c-54ebfc74ea96',
    'G':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_G.jpg?alt=media&token=53921b3f-1f97-46c7-86d6-94c567c4fb6c',
    'H':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_H.jpg?alt=media&token=1d689b58-976d-47da-b91a-06cf9b1e6411',
    'I':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_I.jpg?alt=media&token=63ce9449-4fcf-4c0f-a0ed-20105418424a',
    'J':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_J.jpg?alt=media&token=b17284fb-56e4-42a7-a8a6-5efec9f62b75',
    'K':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_K.jpg?alt=media&token=5c1ddfed-8e60-4b29-9ef6-e002a9625069',
    'L':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_L.jpg?alt=media&token=94f702e0-b33c-480e-aa75-38be3c52a630',
    'M':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_M.jpg?alt=media&token=0108837a-3698-410c-bc59-6953e1fdad55',
    'N':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_N.jpg?alt=media&token=5b7d80a1-a402-468b-8603-cb0bb097ff46',
    'O':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_O.jpg?alt=media&token=d60d57cf-7fa8-4141-adce-a40c092bea0f',
    'P':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_P.jpg?alt=media&token=589eb63c-1fc6-4eac-a742-62cec90ec3c8',
    'Q':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_Q.jpg?alt=media&token=023f8a3b-82bc-4b0a-9198-8686c69e545b',
    'R':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_R.jpg?alt=media&token=8eb9f05f-3f76-4829-9dfe-0812146942db',
    'S':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_S.jpg?alt=media&token=9b209579-e96d-4813-be17-41d668c73a17',
    'T':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_T.jpg?alt=media&token=e3e10639-f000-41a5-a8b8-4484489463b0',
    'U':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_U.jpg?alt=media&token=a7b873a8-0a95-4f59-a607-f82c816ee7fc',
    'V':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_V.jpg?alt=media&token=2fdc8b89-7c4b-4e6f-ae02-431e36d8806b',
    'W':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_W.jpg?alt=media&token=5b39857c-6ac5-4c38-9a29-2899338f84f3',
    'X':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_X.jpg?alt=media&token=7f4dc6ad-c9d7-4547-ab42-c2b05949e009',
    'Y':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_Y.jpg?alt=media&token=57de64d5-df4d-4c4e-99e9-c00f19011dff',
    'Z':
        'https://firebasestorage.googleapis.com/v0/b/alternate-reailities-tr-069d6p.firebasestorage.app/o/bsl%2FBSL_Z.jpg?alt=media&token=4962c8c1-dcfd-4f63-aef1-031012b71f08'
  };

  return alphabetImages[letter?.toUpperCase()];
}

List<String>? initAlphabetAnswers() {
  // i need to generate a list of four distinct integers between 0 and 25
  final Set<int> distinctIntegers = {};
  final List<String> alphabet = <String>[
    'A',
    'B',
    'C',
    'D',
    'E',
    'F',
    'G',
    'H',
    'I',
    'J',
    'K',
    'L',
    'M',
    'N',
    'O',
    'P',
    'Q',
    'R',
    'S',
    'T',
    'U',
    'V',
    'W',
    'X',
    'Y',
    'Z'
  ];
  final List<String> answers = <String>[];
  final math.Random random = math.Random();

  while (distinctIntegers.length < 4) {
    // in set, each object can only occur once
    distinctIntegers.add(random.nextInt(26));
  }

  // ordered list obtained of four unique indices for alphabet list
  final List<int> distinctIntegersList = distinctIntegers.toList();

  for (int i = 0; i < 4; i++) {
    // populate answers list with letters indexed by distinct numbers
    answers.add(alphabet[distinctIntegersList[i]]);
  }

  return answers;
}

/// returns all text before the @ character of input email
String? getEmailNickname(String? email) {
  // return all text before the @ character found in email strings
  if (email == null) return null; // Check if email is null
  int atIndex = email.indexOf('@'); // Find the index of '@'
  return atIndex != -1
      ? email.substring(0, atIndex)
      : email; // Return substring before '@'
}

int calculateLevelFromXP(int experience) {
  if (experience < 1000) return 1;
  if (experience < 2000) return 2;
  if (experience < 3000) return 3;
  if (experience < 4000) return 4;
  if (experience < 5000) return 5;
  return 6;
}
