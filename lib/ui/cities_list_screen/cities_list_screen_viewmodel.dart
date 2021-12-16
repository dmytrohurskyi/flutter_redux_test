import 'package:equatable/equatable.dart';
import 'package:redux_flutter_app_for_vova/data_models/weather_data.dart';
import 'package:redux_flutter_app_for_vova/ui/cities_list_screen/ui_components/list_item_widget.dart';

class CitiesListScreenViewModel extends Equatable {
  final List<CitiesListItemProps> citiesPropsList;

  const CitiesListScreenViewModel({required this.citiesPropsList});

  @override
  List<Object> get props => [citiesPropsList];
}
