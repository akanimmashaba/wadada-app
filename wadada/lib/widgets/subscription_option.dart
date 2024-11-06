// subscription_option.dart
import 'package:flutter/material.dart';

class SubscriptionOption extends StatelessWidget {
  final String title;
  final String price;
  final Color color;
  final VoidCallback onBuyPressed;

  const SubscriptionOption({
    super.key,
    required this.title,
    required this.price,
    required this.color,
    required this.onBuyPressed,
  });

  static const subscriptionOptions = [
    {'title': '1 Month', 'price': '\$9.99', 'color': Colors.blue},
    {'title': '6 Months', 'price': '\$49.99', 'color': Colors.orange},
    {
      'title': '1 Year',
      'price': '\$79.99',
      'color': Color.fromARGB(255, 155, 114, 0)
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              price,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            ElevatedButton(
              onPressed: onBuyPressed,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              child: Text(
                'Buy',
                style: TextStyle(color: color),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
