```r
# Example of a potential issue with R's scoping rules

my_global_var <- 10

my_function <- function(x) {
  my_local_var <- x + 1  # Create a local variable
  my_global_var <- my_global_var + x # Modify the global variable unintentionally
  return(my_local_var)
}

result <- my_function(5)
print(result)  # Output: 6
print(my_global_var) # Output: 15, unexpected side effect
```