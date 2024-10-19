import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainLists/fifth_main_list.dart';
import 'package:rtouch/UI/main_screans/main_screan/widgets/mainRow2TXT.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/fistItemProductscrean.dart';
import 'package:rtouch/UI/main_screans/product_details_screan2/widgets/product_quantity_represent.dart';
import 'package:rtouch/help/constants/constants.dart';
import 'package:rtouch/help/fonts/fonts.dart';

class ProductDetailsScrean2 extends StatefulWidget {
  const ProductDetailsScrean2({super.key});

  @override
  State<ProductDetailsScrean2> createState() => _ProductDetailsScrean2State();
}

class _ProductDetailsScrean2State extends State<ProductDetailsScrean2> {
  @override
  Widget build(BuildContext context) {
    late TextEditingController _controller = TextEditingController();
    bool xLclicked = false;
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
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'فستان كامل',
                          style: arabicstyle5.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext buildContext) {
                                  return Stack(
                                    alignment: Alignment.topCenter,
                                    children: [
                                      AlertDialog(
                                        content: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            TextField(
                                              controller: _controller,
                                              decoration: InputDecoration(
                                                hintText: 'نص الابلاغ',
                                                hintStyle: const TextStyle(
                                                  fontFamily: kmainfont,
                                                ),
                                                hintTextDirection:
                                                    TextDirection.rtl,
                                                border: OutlineInputBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                  borderSide: const BorderSide(
                                                    width: 3,
                                                    color: Color(kmaincolor),
                                                  ),
                                                ),
                                              ),
                                              maxLines: 1,
                                            ),
                                          ],
                                        ),
                                        actions: [
                                          SizedBox(
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(kmaincolor),
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 15.0,
                                                ),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(25),
                                                ),
                                              ),
                                              onPressed: () {
                                                Navigator.of(context).pop();
                                                //?
                                              },
                                              child: Text('ابلاغ',
                                                  style: arabicstyle6.copyWith(
                                                      fontWeight: FontWeight
                                                          .bold)), // Text with style
                                            ),
                                          )
                                        ],
                                      ),
                                      Positioned(
                                        top: 120,
                                        child: FloatingActionButton(
                                          shape: const CircleBorder(),
                                          elevation: 4,
                                          onPressed: () {
                                            GoRouter.of(context).pop();
                                          },
                                          child: const Icon(Icons.cancel),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 2),
                                    shape: BoxShape.circle,
                                    color: Colors.white,
                                  ),
                                  child: const Icon(
                                    Icons.report,
                                    size: 40,
                                    color: Colors.red,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    decoration: kmainboxDecoration,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'فستان كامل بالشنطه والحذاء',
                          style: TextStyle(
                            fontFamily: kmainfont,
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: kmainboxDecoration,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'عدد القطع المتوفرة',
                          style: arabicstyle5.copyWith(fontSize: 18),
                        ),
                        const ProductQuantityRepresent(pquantity: 60),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'المقاس ',
                          style: arabicstyle5.copyWith(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: kmainboxDecoration,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [],
                    ),
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
                            ],
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(right: 25.0),
                          child: Icon(Icons.add),
                        ),
                        GestureDetector(
                          onTap: () {
                            xLclicked = true;
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                                border: Border.all(
                                    width: 2,
                                    color:
                                        const Color.fromARGB(255, 62, 75, 82)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(.9),
                                    blurRadius: 2,
                                    spreadRadius: 1,
                                    offset: const Offset(0, 0),
                                  ),
                                ]),
                            child: Text(
                              'XXL',
                              style: arabicstyle5.copyWith(fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  xLclicked? Padding(
                    padding: const EdgeInsets.only(right: 10.0, top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'اللون',
                          style: arabicstyle5.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ): 
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
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        margin: const EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: const Color(kmaincolor),
                            border: const Border(
                                right: BorderSide(
                                    color: Colors.blueGrey, width: 1),
                                left: BorderSide(
                                    color: Colors.blueGrey, width: 1),
                                bottom: BorderSide(
                                    color: Colors.blueGrey, width: 1)),
                            boxShadow: [
                              BoxShadow(
                                color: const Color.fromARGB(255, 210, 204, 204)
                                    .withOpacity(.9),
                                blurRadius: 1,
                                spreadRadius: 1,
                                offset: const Offset(0, 1),
                              ),
                            ]),
                        child: Row(
                          children: [
                            Text(
                              'اضافة للسلة',
                              style: arabicstyle6.copyWith(fontSize: 17),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Icon(
                                Icons.shopping_cart_sharp,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        ' ريال ',
                        style: arabicstyle5.copyWith(fontSize: 15),
                      ),
                      Text(
                        '5',
                        style: arabicstyle5.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                  Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const MainRow2TXT(
                          text1: 'الكل', text2: 'المنتجات المشابهه')),
                  Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const FifthMainList(width: 200, height: 220)),
                  Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const MainRow2TXT(
                          text1: 'الكل', text2: 'اخر ما تم مشاهدته')),
                  Container(
                      decoration: const BoxDecoration(color: Colors.white),
                      child: const FifthMainList(width: 200, height: 220)),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
