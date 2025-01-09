# Unhandled JSON Decoding Exception in Dart HTTP Request

This repository demonstrates a common error in Dart applications when handling HTTP responses.  The `fetchData` function attempts to decode the response body as JSON without checking its validity or format. This can result in a `FormatException` if the server response is not correctly formatted JSON.

The `bug.dart` file contains the erroneous code.  The `bugSolution.dart` file demonstrates the correct way to handle the response, including error checking and handling.

## How to reproduce:
1. Clone this repository.
2. Run `bug.dart`. Observe the error handling (or lack thereof).  Consider modifying the API endpoint to return a non-JSON response to trigger the error.
3. Run `bugSolution.dart`. Note the improved error handling and how the JSON decoding is properly checked.

## Solution:
Always validate the HTTP response status code and check if the response body is valid JSON before attempting to decode it.  Use `try-catch` blocks to handle potential exceptions gracefully.