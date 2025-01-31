# Unhandled FormatException in Dart JSON Decoding

This repository demonstrates a common error in Dart when working with JSON APIs: neglecting to handle potential `FormatException` exceptions during JSON decoding.  The `bug.dart` file showcases the problematic code, while `bugSolution.dart` provides a robust solution.

## Problem

The original code directly calls `jsonDecode` on the API response body without checking for errors. If the API response is not valid JSON (e.g., due to a server error or unexpected response format), `jsonDecode` throws a `FormatException`, leading to an app crash.

## Solution

The improved code in `bugSolution.dart` addresses this by:

1. **Checking the HTTP status code:** Ensures the API request was successful before attempting to parse the response.
2. **Using a `try-catch` block:** Handles potential `FormatException` exceptions gracefully, preventing app crashes.  Provides informative error messages.

This demonstrates best practices for handling JSON in Dart and making your app more resilient to unexpected API responses.