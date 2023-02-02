import 'package:engamrbakr/componts/model.dart';
import 'package:flutter/material.dart';

class Itempizza extends StatelessWidget {
  final Product model;
  const Itempizza({Key? key, required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 4),
      child: SizedBox(
        height: 193,
        child: Stack(
          children: [
            Image.asset(
              model.imageUrl!,
              height: 193,
              width: double.infinity,
            ),
            Container(
              decoration: const BoxDecoration(),
              child: Align(
                alignment: AlignmentDirectional.bottomStart,
                child: Padding(
                  padding:
                  const EdgeInsets.only(left: 21.0, bottom: 21.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        model.name!,
                        style: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      const SizedBox(
                        height: 6.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.star,
                            color: Color(0xffFC6011),
                            size: 15.0,
                          ),
                          const SizedBox(
                            width: 4.2,
                          ),
                          Text(
                            model.rate.toString(),
                            style: const TextStyle(
                              fontSize: 11.0,
                              color: Color(0xffFC6011),
                            ),
                          ),
                          Text(
                            model.description!,
                            style: const TextStyle(
                              fontSize: 11.0,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          const CircleAvatar(
                            maxRadius: 2.0,
                            backgroundColor: Color(0xffFC6011),
                          ),
                          Text(
                            model.category!,
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
