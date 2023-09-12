import 'package:cleaning_service/colors/colors.dart';
import 'package:cleaning_service/screens/appartment/apartment_screen.dart';
import 'package:cleaning_service/widgets/home_button.dart';
import 'package:flutter/material.dart';

class CustomButtons extends StatefulWidget {
  const CustomButtons({super.key});

  @override
  State<CustomButtons> createState() => _CustomButtonsState();
}

class _CustomButtonsState extends State<CustomButtons> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeButton(
                    title: "Apartment",
                    icon: Icons.apartment_sharp,
                    onPress: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ApartmentScreen()));
                    },
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  HomeButton(
                    title: "Home",
                    icon: Icons.house_outlined,
                    iconColor: GreenColor,
                    onPress: () {
                      setState(() {
                        final snackBar =
                            SnackBar(content: Text('Tap Function'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeButton(
                    title: "Office",
                    icon: Icons.laptop_mac_sharp,
                    iconColor: GreenColor,
                    onPress: () {},
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  HomeButton(
                    title: "Hotel",
                    icon: Icons.location_city_sharp,
                    onPress: () {},
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HomeButton(
                    title: "Furniture",
                    icon: Icons.chair,
                    onPress: () {},
                  ),
                  const SizedBox(
                    width: 18,
                  ),
                  HomeButton(
                    title: "Carpets",
                    icon: Icons.texture_sharp,
                    iconColor: GreenColor,
                    onPress: () {
                      setState(() {
                        final snackBar =
                            SnackBar(content: Text('Tap Function'));
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      });
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
