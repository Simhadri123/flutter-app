import 'package:flutter/material.dart';
import '../../../../common/tools.dart';
import '../../../../models/entities/product.dart';
import '../../../../modules/dynamic_layout/index.dart';

class PriceItem extends StatelessWidget {
  final Product item;
  final ProductConfig config;
  const PriceItem({required this.item, required this.config});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    if (config.hidePrice) return const SizedBox();

    if (item.price != null && item.regularPrice != null) {
      return Row(
        children: <Widget>[
          Text(PriceTools.getCurrencyFormatted(item.regularPrice, null)!,
              style:
                  TextStyle(color: theme.colorScheme.secondary, fontSize: 12)),
          const Text(' - '),
          Text(PriceTools.getCurrencyFormatted(item.price, null)!,
              style:
                  TextStyle(color: theme.colorScheme.secondary, fontSize: 12))
        ],
      );
    }
    if (item.regularPrice != null) {
      return Text(PriceTools.getCurrencyFormatted(item.regularPrice, null)!,
          style: TextStyle(color: theme.colorScheme.secondary, fontSize: 12));
    }
    if (item.price != null) {
      return Text(PriceTools.getCurrencyFormatted(item.price, null)!,
              style:
                  TextStyle(color: theme.colorScheme.secondary, fontSize: 12));
    }
    return const SizedBox();
  }
}
