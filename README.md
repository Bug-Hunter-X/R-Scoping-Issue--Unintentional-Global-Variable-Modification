# R Scoping Bug

This repository demonstrates a common but subtle bug in R programming related to scoping.  The `bug.r` file contains code that unintentionally modifies a global variable from within a function. This can lead to unexpected behavior and difficult-to-track errors in larger projects. The `bugSolution.r` file shows how to solve this issue by using explicit scoping techniques.

**Key Issue:** R's scoping rules can sometimes lead to unintentional modification of global variables if not carefully managed.  This example highlights this potential pitfall.

**Solution:** Use techniques like the `<<-` assignment operator (with caution) or redesign function to avoid reliance on global variables.