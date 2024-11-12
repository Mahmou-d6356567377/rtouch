import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:rtouch/Core/constants/constants.dart';
import 'package:rtouch/Core/fonts/fonts.dart';

class CustomreportButton extends StatelessWidget {
  const CustomreportButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Padding(
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
                          controller: controller,
                          decoration: InputDecoration(
                            hintText: 'نص الابلاغ',
                            hintStyle: const TextStyle(
                              fontFamily: kmainfont,
                            ),
                            hintTextDirection: TextDirection.rtl,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
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
                            backgroundColor: const Color(kmaincolor),
                            padding: const EdgeInsets.symmetric(
                              vertical: 15.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context).pop();
                            //?
                          },
                          child: Text('ابلاغ',
                              style: arabicstyle6.copyWith(
                                  fontWeight:
                                      FontWeight.bold)), // Text with style
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
                border: Border.all(color: Colors.grey, width: 2),
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
    );
  }
}
