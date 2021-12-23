import 'package:flutter/material.dart';
import 'package:redux_flutter_app_for_vova/generated/l10n.dart';

class ForecastRoundButtonWidget extends StatelessWidget {
  const ForecastRoundButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 42),
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          S.of(context).forecastBtnTitle,
          style: const TextStyle(fontSize: 22),
        ),
        style: ButtonStyle(
          padding:
              MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(12)),
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor:
              MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.4)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32.0),
                  side: BorderSide(width: 2, color: Colors.white.withOpacity(0.4)))),
        ),
      ),
    );
  }
}
