import 'package:flutter/material.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/fifth_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainRow2TXT.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/fistItemProductscrean.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/fourth_row_product_detail.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/product_desc_row.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/report_button.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/third_row_product_detail.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

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
                        Container(
                          padding: const EdgeInsets.all(8),
                          margin: const EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              color: Colors.white,
                              border: const Border(
                                  right: BorderSide(
                                      color: Colors.blueGrey, width: 1),
                                  left: BorderSide(
                                      color: Colors.blueGrey, width: 1),
                                  bottom: BorderSide(
                                      color: Colors.blueGrey, width: 1)),
                              boxShadow: [
                                BoxShadow(
                                  color:
                                      const Color.fromARGB(255, 210, 204, 204)
                                          .withOpacity(.9),
                                  blurRadius: 1,
                                  spreadRadius: 1,
                                  offset: const Offset(0, 1),
                                ),
                              ]),
                          child: Row(
                            children: [
                              Text(
                                'جدول المقاسات',
                                style: arabicstyle5.copyWith(fontSize: 15),
                              ),
                              Container(
                                  height: 25,
                                  margin: const EdgeInsets.all(5),
                                  child: Image.asset(kmeasure))
                            ],
                          ),
                        ),
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
                            child: Container(
                              padding: const EdgeInsets.all(8),
                              margin: const EdgeInsets.symmetric(horizontal: 4),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: selectedSize == size
                                    ? Colors.blueGrey
                                    : Colors.white,
                                border: Border.all(
                                    width: 2,
                                    color: const Color.fromARGB(
                                        255, 62, 75, 82)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.9),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Text(
                                size,
                                style: arabicstyle5.copyWith(fontSize: 15),
                              ),
                            ),
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
                    child: const MainRow2TXT(
                        text1: 'الكل', text2: 'المنتجات المشابهه'),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const FifthMainList(width: 200, height: 220),
                  ),
                  Container(
                    decoration: const BoxDecoration(color: Colors.white),
                    child: const MainRow2TXT(
                        text1: 'الكل', text2: 'اخر ما تم مشاهدته'),
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
