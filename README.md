# Dart: Handling Missing Keys in JSON Responses

This repository demonstrates a common error in Dart when working with JSON responses from APIs: attempting to access keys that may not exist in the response.  The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

## Problem

The `fetchData` function in `bug.dart` fetches data from an API.  However, it directly accesses the `'missingKey'` within the JSON response without checking for its existence. If the key is missing, this leads to a runtime error.

## Solution

The `bugSolution.dart` file demonstrates the proper way to handle this.  Before accessing a key, the code checks if it exists using the `containsKey` method. This prevents runtime errors and makes the code more resilient.
