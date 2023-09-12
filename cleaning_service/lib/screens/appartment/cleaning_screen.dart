import 'package:cleaning_service/screens/appartment/apartment_last_screen.dart';
import 'package:cleaning_service/widgets/app_bottom_button.dart';
import 'package:cleaning_service/widgets/cleaning_widget.dart';
import 'package:flutter/material.dart';

class CleaningScreen extends StatefulWidget {
  const CleaningScreen({super.key});

  @override
  State<CleaningScreen> createState() => _CleaningScreenState();
}

class _CleaningScreenState extends State<CleaningScreen> {
  int livingRoom = 2;
  int bathRoom = 1;
  int kitchen = 1;
  int hall = 1;
  int balcony = 0;

  int errorcheck(int value) {
    if (value < 1) {
      return value = 0;
    }
    return value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Apartment Cleaning",
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 2),
        ),
        scrolledUnderElevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Enter total area of the apartment:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    wordSpacing: 1,
                    letterSpacing: 1),
              ),
              const SizedBox(
                height: 12,
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    fillColor: Color(0xffF8F9FA),
                    filled: true,
                    hintText: "Total Area (sq m)",
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    contentPadding: EdgeInsets.all(8)),
              ),
              const SizedBox(
                height: 45,
              ),
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    const Text(
                      "Selected area that should be cleaned: ",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          wordSpacing: 1,
                          letterSpacing: 1),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CleaningWidget(
                        title: "Living Room",
                        addOnPress: () {
                          setState(() {
                            livingRoom++;
                          });
                        },
                        counter: livingRoom,
                        subOnPress: () {
                          setState(() {
                            livingRoom--;
                            livingRoom = errorcheck(livingRoom);
                          });
                        }),
                    CleaningWidget(
                        title: "Bathroom",
                        addOnPress: () {
                          setState(() {
                            bathRoom++;
                          });
                        },
                        counter: bathRoom,
                        subOnPress: () {
                          setState(() {
                            bathRoom--;
                            bathRoom = errorcheck(bathRoom);
                          });
                        }),
                    CleaningWidget(
                        title: "Kitchen",
                        addOnPress: () {
                          setState(() {
                            kitchen++;
                          });
                        },
                        counter: kitchen,
                        subOnPress: () {
                          setState(() {
                            kitchen--;
                            kitchen = errorcheck(kitchen);
                          });
                        }),
                    CleaningWidget(
                        title: "Hall",
                        addOnPress: () {
                          setState(() {
                            hall++;
                          });
                        },
                        counter: hall,
                        subOnPress: () {
                          setState(() {
                            hall--;
                            hall = errorcheck(hall);
                          });
                        }),
                    CleaningWidget(
                        title: "Balcony",
                        addOnPress: () {
                          setState(() {
                            balcony++;
                          });
                        },
                        counter: balcony,
                        subOnPress: () {
                          setState(() {
                            balcony--;
                            balcony = errorcheck(balcony);
                          });
                        }),
                    // const Spacer(),
                    BottomButton(
                        title: "Contine",
                        onPress: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AvailableSpeclist()),
                          );
                        })
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
