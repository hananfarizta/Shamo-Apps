import 'package:flutter/material.dart';
import 'package:shamo/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product');
      },
      child: Container(
          width: 215,
          height: 278,
          margin: EdgeInsets.only(right: defaultMargin),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xffECEDEF)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: defaultMargin,
              ),
              Image.asset(
                'assets/image_shoes.png',
                width: 215,
                height: 150,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hiking',
                      style: secondaryTextStyle.copyWith(
                        fontSize: 12,
                        fontWeight: reguler,
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      'COURT VISION 2.0',
                      style: blackTextStyle.copyWith(
                        fontSize: 18,
                        fontWeight: semibold,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Text(
                      '\$58,67',
                      style: priceTextStyle.copyWith(
                        fontSize: 14,
                        fontWeight: medium,
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
