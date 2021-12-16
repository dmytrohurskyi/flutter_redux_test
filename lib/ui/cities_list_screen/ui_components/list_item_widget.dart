import 'package:flutter/material.dart';

class CitiesListItemProps {
  final String city;
  final Function() onPress;

  CitiesListItemProps({required this.city, required this.onPress});
}

class ListItemWidget extends StatelessWidget {
  final CitiesListItemProps cityProp;

  const ListItemWidget({Key? key, required this.cityProp}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Text(
        cityProp.city,
        style: const TextStyle(fontSize: 20),
      ),
    );
  }
}
