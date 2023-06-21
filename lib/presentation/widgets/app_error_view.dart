import 'package:flutter/material.dart';

class AppErrorView extends StatelessWidget {
  final String message;
  final VoidCallback? onPressed;

  const AppErrorView({
    Key? key,
    required this.message,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/wifi.png'),
          const SizedBox(
            height: 24.0,
          ),
          Text(
            message,
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(
            height: 24.0,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                fixedSize: const Size.fromWidth(200.0)),
            onPressed: onPressed,
            child: Text(
              'Retry',
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
