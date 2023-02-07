import 'package:flutter/material.dart';

class Kid extends StatefulWidget {
  const Kid({Key? key}) : super(key: key);

  @override
  State<Kid> createState() => _KidState();
}

class _KidState extends State<Kid> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                'Hello Steve.!',
                style: TextStyle(
                    color: Colors.pinkAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.w600),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Your request has been submitted. We will get back to you shortly. Meantime you can explore our products',
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 22,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: 25,
            ),
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  color: Colors.yellow,
                  height: 50,
                  child: const Center(
                      child: Text(
                    'Explore More',
                    style: TextStyle(fontSize: 18),
                  )),
                ))
          ],
        ),
      ),
    );
  }
}
