import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xff62FCD7),
            borderRadius: BorderRadius.circular(8)),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child: isLoading
              ? const CircularProgressIndicator(
            color: Colors.black,
          )
              : const Text(
                  'Add',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
        ),
      ),
    );
  }
}
