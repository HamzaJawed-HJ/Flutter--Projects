import 'package:cleaning_service/screens/appartment/cleaning_screen.dart';
import 'package:cleaning_service/widgets/apartment_widget.dart';
import 'package:cleaning_service/widgets/app_bottom_button.dart';
import 'package:flutter/material.dart';

class ApartmentScreen extends StatefulWidget {
  const ApartmentScreen({super.key});

  @override
  State<ApartmentScreen> createState() => _ApartmentScreenState();
}

class _ApartmentScreenState extends State<ApartmentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: Stack(children: [
          Image(
            image: const AssetImage('assets/appartment.jpg'),
            fit: BoxFit.fill,
            width: double.infinity,
            height: MediaQuery.of(context).size.height * .4,
          ),
          //Back Button
          Positioned(
            top: 30,
            child: IconButton(
              icon: const Icon(
                Icons.cancel_rounded,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.7,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                //write other widget then call it here
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: ApartmentWidget(),
                )),
          ),

          //button
          BottomButton(
            title: "Book Now",
            onPress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => CleaningScreen()));
            },
          )
        ]),
      ),
    );
  }
}
