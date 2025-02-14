# Uncommon Shell Scripting Errors

This repository demonstrates several subtle but impactful errors that can occur in shell scripts.  These errors often lead to unexpected behavior or silent failures, making debugging difficult.

The `bug.sh` file contains examples of these errors.  The `bugSolution.sh` file provides corrected versions with robust error handling and improved clarity.

**Specific issues addressed:**

* **Incorrect file existence check:** The script doesn't handle cases where the file might not exist or is not accessible.
* **Neglecting error codes from external commands:**  The script doesn't check the return codes of commands, leading to potential silent failures.
* **Misuse of conditional logic:** Incorrect use of conditional statements results in unexpected behavior.

This repository aims to serve as a learning resource to highlight best practices in shell scripting and avoid common pitfalls.