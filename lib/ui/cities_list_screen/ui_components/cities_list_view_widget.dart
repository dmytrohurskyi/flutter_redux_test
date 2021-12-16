import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/redux/home_screen/home_screen_connector.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/list_item_widget.dart';

class CitiesListViewWidget extends StatelessWidget {
  final List<CitiesListItemProps> citiesPropsList;

  const CitiesListViewWidget(
      {Key? key, required this.citiesPropsList, })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: citiesPropsList.length,
      itemBuilder: (BuildContext context, int index) {
        final cityProp = citiesPropsList.elementAt(index);
        return GestureDetector(
          child: ListItemWidget(cityProp: cityProp),
          onTap: () {
            cityProp.onPress();
          },
        );
      },
    );
  }
}
