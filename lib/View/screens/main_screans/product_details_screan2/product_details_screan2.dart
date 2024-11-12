import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/Routes/routes/app_routes.dart';
import 'package:rtouch/View/pub_widgets/buttons/size_button.dart';
import 'package:rtouch/View/pub_widgets/measure_table_button.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/mainLists/fifth_main_list.dart';
import 'package:rtouch/View/screens/main_screans/main_screan/widgets/mainRow2TXT.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan2/widgets/fistItemProductscrean.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan2/widgets/fourth_row_product_detail.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan2/widgets/product_desc_row.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan2/widgets/report_button.dart';
import 'package:rtouch/View/screens/main_screans/product_details_screan2/widgets/third_row_product_detail.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class ProductDetailsScrean2 extends StatefulWidget {
  const ProductDetailsScrean2({super.key});

  @override
  State<ProductDetailsScrean2> createState() => _ProductDetailsScrean2State();
}

class _ProductDetailsScrean2State extends State<ProductDetailsScrean2> {
  String? selectedSize;

  // List of available sizes
  final List<String> sizes = ['L', 'XL', 'XXL'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Color(kmaincolor),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const FrstItmProductScrean(
                      bigimg: img, smalimg: img, title: 'مها'),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'فستان كامل',
                          style: arabicstyle5.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        const CustomreportButton(),
                      ],
                    ),
                  ),
                  const ProductDescRow(
                      productdescription: 'فستان كامل بالشنطه والحذاء'),
                  ThirdRowProductDetial(
                    xLclicked: selectedSize == 'XL',
                    quantity: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        MeasureTableButton(ontap: () {
                          GoRouter.of(context).push(AppRoutes.ssc);
                        }),
                        // Render size options
                        for (var size in sizes)
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                selectedSize =
                                    selectedSize == size ? null : size;
                              });
                              print('Selected size: $selectedSize');
                            },
                            child: SizeButton(selectedSize: selectedSize, size: size ,selectedColor: Colors.blueGrey,unselectedColor:Colors.white,),
                          ),
                      ],
                    ),
                  ),
                  if (selectedSize != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'اللون',
                            style: arabicstyle5.copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  if (selectedSize != null)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, top: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(12),
                                  color: Colors.blueGrey,
                                ),
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadiusDirectional.circular(17),
                                  color: Colors.orange,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  const FourthRowProductDetails(
                    price: 43,
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: MainRow2TXT(
                      text1: 'الكل',
                      text2: 'المنتجات المشابهه',
                      fun: () {},
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const FifthMainList(width: 200, height: 220),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: MainRow2TXT(
                      text1: 'الكل',
                      text2: 'اخر ما تم مشاهدته',
                      fun: () {},
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const FifthMainList(width: 200, height: 220),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}