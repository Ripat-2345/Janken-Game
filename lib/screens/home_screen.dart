import 'package:flutter/material.dart';
import 'package:flutter_rsp/controller/rsp_controller.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final rspC = Get.put(RSPController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff5B74FA),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 34,
              top: 39,
              right: 34,
              bottom: 10,
            ),
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 106,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 3),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Welcome To ",
                              style: GoogleFonts.inconsolata(
                                color: const Color(0xff5B74FA),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "R",
                              style: GoogleFonts.inconsolata(
                                color: const Color(0xffFED402),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "S",
                              style: GoogleFonts.inconsolata(
                                color: const Color(0xffFF6F7F),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              "P",
                              style: GoogleFonts.inconsolata(
                                color: const Color(0xff4CFF69),
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          "Game",
                          style: GoogleFonts.inconsolata(
                            color: const Color(0xff5B74FA),
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "VS",
                      style: GoogleFonts.inconsolata(
                        color: Colors.white,
                        fontSize: 38,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Obx(
                    () => Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // ignore: unrelated_type_equality_checks
                        (rspC.userImg.value != "")
                            ? Image.asset(
                                rspC.userImg.value,
                                width: 80,
                                height: 85,
                              )
                            : SizedBox(
                                width: 85,
                                height: 85,
                                child: Text(
                                  "YOU",
                                  style: GoogleFonts.inconsolata(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                        const SizedBox(width: 20),
                        // ignore: unrelated_type_equality_checks
                        (rspC.compChoice.value != "")
                            ? Image.asset(
                                "assets/images/${rspC.compChoice.value}.png",
                                width: 80,
                                height: 85,
                              )
                            : SizedBox(
                                width: 79,
                                height: 85,
                                child: Text(
                                  "COMP",
                                  style: GoogleFonts.inconsolata(
                                    color: Colors.white,
                                    fontSize: 32,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () async {
                          rspC.userImg.value = "assets/images/rock.png";
                          rspC.compChoice.value = rspC
                              .options[rspC.random.nextInt(rspC.options.length)]
                              .toString();
                          await rspC.runRSP("rock");
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Image.asset("assets/images/rock.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          rspC.userImg.value = "assets/images/scissors.png";
                          rspC.compChoice.value = rspC
                              .options[rspC.random.nextInt(rspC.options.length)]
                              .toString();
                          await rspC.runRSP("scissors");
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Image.asset("assets/images/scissors.png"),
                        ),
                      ),
                      GestureDetector(
                        onTap: () async {
                          rspC.userImg.value = "assets/images/paper.png";
                          rspC.compChoice.value = rspC
                              .options[rspC.random.nextInt(rspC.options.length)]
                              .toString();
                          await rspC.runRSP("paper");
                        },
                        child: Container(
                          width: 60,
                          height: 60,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: Image.asset("assets/images/paper.png"),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black, width: 3),
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              "YOU",
                              style: GoogleFonts.inconsolata(
                                color: const Color(0xff5B74FA),
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Obx(
                              () => Text(
                                rspC.user.toString(),
                                style: GoogleFonts.inconsolata(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "COMP",
                              style: GoogleFonts.inconsolata(
                                color: const Color(0xff5B74FA),
                                fontSize: 28,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            Obx(
                              () => Text(
                                rspC.comp.toString(),
                                style: GoogleFonts.inconsolata(
                                  color: Colors.black,
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 90,
                        height: 40,
                        child: ElevatedButton(
                          onPressed: () => rspC.resetScore(),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            side: const BorderSide(
                                color: Colors.black,
                                width: 3,
                                style: BorderStyle.solid),
                          ),
                          child: Text(
                            "Reset",
                            style: GoogleFonts.inconsolata(
                              color: const Color(0xff5B74FA),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
