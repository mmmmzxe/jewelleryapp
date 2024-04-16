import 'package:flutter/material.dart';
import 'package:icons_flutter/icons_flutter.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    required this.product,
    required this.press,
  }) : super(key: key);

  final Product product;

  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
        decoration: BoxDecoration(
          color: Color(0xFFF7F7F7),
          borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(70), topLeft: Radius.circular(70)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(product.image!),
            Text(
              product.title!,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              "Jewelry",
              style: Theme.of(context).textTheme.caption,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('\$ ${product.amount}'),
                    Text(
                      '\$ ${product.oldamount}',
                      style: TextStyle(
                          fontSize: 11,
                          decoration: TextDecoration.lineThrough,
                          color: Colors.pink),
                    ),
                  ],
                ),
                IconButton(
                    onPressed: press,
                    icon: Icon(
                      Entypo.eye,
                      color: Colors.pink[800],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
