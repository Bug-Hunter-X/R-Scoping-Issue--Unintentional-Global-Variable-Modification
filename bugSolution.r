```r
# Solution: Using explicit scoping to avoid modifying the global variable

my_global_var <- 10

my_function <- function(x) {
  my_local_var <- x + 1
  return(my_local_var)
}

result <- my_function(5)
print(result) # Output: 6
print(my_global_var) # Output: 10 (global variable remains unchanged)

# Alternative: Using <<- (Use with caution!)

my_function_global_assign <- function(x) {
  my_global_var <<- my_global_var + x  # Explicitly modifies global variable
  my_local_var <- x + 1
  return(my_local_var)
}

result2 <- my_function_global_assign(5)
print(result2) # Output: 6
print(my_global_var) # Output: 15 (global variable is modified intentionally)
```