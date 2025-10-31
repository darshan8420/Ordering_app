import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import '/flutter_flow/custom_functions.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

dynamic groupIngredients(List<FoodItemsRecord>? ingredientList) {
  /// MODIFY CODE ONLY BELOW THIS LINE

// 1. Initialize the map to hold the grouped data.
  Map<String, List<Map<String, dynamic>>> grouped = {};

  // 2. Iterate through every document in the list.
  // Use 'FoodItemsRecord' properties instead of DocumentSnapshot methods.
  for (var doc in ingredientList ?? []) {
    // 3. Extract the category (e.g., "Vegetables") directly from the model property.
    // The field name 'category' must match the field in your Firestore model.
    final category = doc.category;

    // Safety check: Skip if the category field is missing or empty.
    if (category == null || category.isEmpty) continue;

    // 4. Ensure the category key exists in the 'grouped' map.
    if (!grouped.containsKey(category)) {
      grouped[category] = [];
    }

    // 5. Add the item's data using the model's properties.
    grouped[category]!.add({
      // Use the model's built-in reference field for the document reference
      'doc_ref': doc.reference,
      'name': doc.name,
      'price': doc.price,
      'calories': doc.calories,
      'image_url': doc.imageUrl,
    });
  }

  // 6. The function returns the final grouped map as a JSON object.
  return grouped;

  /// MODIFY CODE ONLY ABOVE THIS LINE
}
