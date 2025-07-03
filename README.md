 Product Listing App - Linked Gates Task

This Flutter project is a simple Product Listing Screen built for the Linked Gates technical assessment. It showcases a list of products fetched from a API with features like clean UI, loading shimmer, error handling, and proper state management using Bloc pattern.

---

Features

- Fetches product data from: [https://api.escuelajs.co/api/v1/products]
- Displays:
  - Product image
  - Brand name (static: LAMEREI)
  - Product name
  - Price
  - Static Rating (⭐ 4.8)
  - Size options (S, M, L)
  - Favorite icon
  - Shimmer loading effect
  - Error handling with retry
  - Bloc pattern for state management
  - Clean and responsive UI

Getting Started

1. Clone the repository

git clone https://github.com/Khalid-Elbakly/Product-Listing-App

2. Install dependencies
   
flutter pub get

3. Run the project
   
flutter run

Packages Used
- flutter_bloc =>	State management (BLoC pattern)
- http =>	API calls
- shimmer =>	Loading indicator

Notes: 
- The rating and sizes are hardcoded as placeholders (based on the design).
- The API doesn't return ratings or sizes, so they are manually displayed for UI consistency.
- Error handling covers basic network or parsing failures.
