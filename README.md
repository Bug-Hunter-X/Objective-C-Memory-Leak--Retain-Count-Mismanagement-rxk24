# Objective-C Memory Leak: Retain Count Mismanagement

This repository demonstrates a common memory leak in Objective-C related to improper handling of retain counts when assigning to properties. The `bug.m` file shows the problematic code, while `bugSolution.m` offers a corrected version.

**Problem:**
The original code fails to properly manage the retain count of an NSString object assigned to a property. This results in a memory leak because the string's retain count isn't decremented correctly.

**Solution:**
The corrected version demonstrates the proper handling of retain counts to prevent memory leaks. This involves understanding the effects of `retain`, `release`, and `autorelease` in object lifecycle management.

**How to run:**
1. Clone this repository.
2. Open the project in Xcode.
3. Build and run the project to observe the corrected memory management.

This example highlights the importance of careful memory management in Objective-C to avoid common memory leak errors.