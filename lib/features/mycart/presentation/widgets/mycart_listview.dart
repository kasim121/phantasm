import 'package:flutter/material.dart';

import '../../../../confi/themes/app_colors.dart';
import '../../../../confi/themes/app_text_style.dart';

class ShoeListView extends StatefulWidget {
  const ShoeListView({super.key});

  @override
  _ShoeListViewState createState() => _ShoeListViewState();
}

class _ShoeListViewState extends State<ShoeListView> {
  final List<Map<String, dynamic>> shoeData = [
    {
      "image": "assets/images/shoe.png",
      "name": "Sample",
      "size": "L",
      "price": 562,
      "quantity": 1, // Initial quantity
    },
    {
      "image": "assets/images/shoe.png",
      "name": "Sample",
      "size": "XL",
      "price": 562,
      "quantity": 1, // Initial quantity
    },
    {
      "image": "assets/images/shoe.png",
      "name": "Sample",
      "size": "XXL",
      "price": 562,
      "quantity": 1, // Initial quantity
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 315,
      child: ListView.builder(
        itemCount: shoeData.length,
        itemBuilder: (context, index) {
          final shoe = shoeData[index];

          return Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 87,
                      height: 85,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.darkBackground,
                      ),
                      child: Image.asset(
                        shoe["image"],
                        fit: BoxFit.contain,
                      ),
                    ),
                    const SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "${shoe['name']}",
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "\$ ${shoe['price']}",
                            style: AppTextStyles.airbnbCerealText(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w400,
                              fontSize: 16,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    if (shoe['quantity'] > 1) {
                                      shoe['quantity'] -= 1;
                                    }
                                  });
                                },
                                child: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    color: AppColors.darkBackground,
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/minus.png',
                                      width: 8.0,
                                      height: 8.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              Text(
                                "${shoe['quantity']}",
                                style: AppTextStyles.airbnbCerealText(
                                  color: AppColors.textPrimary,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(
                                width: 4,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    shoe['quantity'] += 1;
                                  });
                                },
                                child: Container(
                                  width: 24.0,
                                  height: 24.0,
                                  decoration: BoxDecoration(
                                    color: AppColors.customBlue,
                                    borderRadius: BorderRadius.circular(22.0),
                                  ),
                                  child: Center(
                                    child: Image.asset(
                                      'assets/icons/add.png',
                                      width: 8.0,
                                      height: 8.0,
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "${shoe['size']}",
                      style: AppTextStyles.airbnbCerealText(
                        color: AppColors.textPrimary,
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 18,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: AppColors.darkBackground,
                      ),
                      child: Image.asset(
                        'assets/icons/delete.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
