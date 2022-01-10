import 'dart:math';
import 'package:get/get.dart';

class RSPController extends GetxController {
  var random = Random();
  var userImg = "".obs;
  // Initial score
  var user = 0.obs;
  var comp = 0.obs;

  // Rules of the game
  Map<String, String> rules = {
    "rock": "scissors",
    "scissors": "paper",
    "paper": "rock"
  };

  // Options for computer to choose
  List<String> options = ["rock", "paper", "scissors"];

  var compChoice = "".obs;

  Future<void> runRSP(String userChoice) async {
    if (userChoice == compChoice.value) {
      Get.snackbar("Bam Bam Bam!", "Wow our results are draw!");
    } else if (rules[compChoice.value] == userChoice) {
      comp += 1;
    } else if (rules[userChoice] == compChoice.value) {
      user += 1;
    }
  }

  void resetScore() {
    user.value = 0;
    comp.value = 0;
    userImg.value = "";
    compChoice.value = "";
  }
}
