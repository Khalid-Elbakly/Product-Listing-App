import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerProductCard extends StatelessWidget {
  const ShimmerProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Shimmer.fromColors(
          baseColor: Colors.grey[300]!,
          highlightColor: Colors.grey[100]!,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Fake Image
              Container(
                width: 80,
                height: 80,
                color: Colors.white,
              ),
              const SizedBox(width: 12),

              // Text placeholders
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Brand name
                    Container(height: 14, width: 70, color: Colors.white),
                    const SizedBox(height: 8),

                    // Product name line
                    Container(height: 14, width: double.infinity, color: Colors.white),
                    const SizedBox(height: 4),
                    Container(height: 14, width: 120, color: Colors.white),

                    const SizedBox(height: 8),

                    // Price
                    Container(height: 14, width: 60, color: Colors.white),

                    const SizedBox(height: 8),

                    // Ratings
                    Container(height: 12, width: 80, color: Colors.white),

                    const SizedBox(height: 8),

                    // Sizes
                    Row(
                      children: List.generate(3, (index) {
                        return Container(
                          margin: const EdgeInsets.only(right: 6),
                          width: 30,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        );
                      }),
                    ),
                  ],
                ),
              ),

              // Favorite icon placeholder
              Container(
                width: 24,
                height: 24,
                color: Colors.white,
              )
            ],
          ),
        ),
      ),
    );
  }
}
