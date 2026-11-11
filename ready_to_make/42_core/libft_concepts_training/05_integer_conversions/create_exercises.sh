#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")" || exit 1

cat > 00_ft_count_digits.c <<'EXERCISE_00'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

size_t	ft_count_digits(unsigned int n)
{
	
}

/*
GOAL:
Count decimal digits, including one digit for zero.

TODO:
1. Start with a count of one.
2. Divide n by ten until it is below ten.

EXPECTED OUTPUT:
1
5
*/

int	main(void)
{
	printf("%zu\n", ft_count_digits(0));
	printf("%zu\n", ft_count_digits(12345));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_count_digits represent?
2. Why does this task require: start with a count of one?
3. Which boundary condition could change the result?
4. How does ft_count_digits support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_00

cat > 01_ft_unsigned_magnitude.c <<'EXERCISE_01'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

unsigned int	ft_unsigned_magnitude(int n)
{
	
}

/*
GOAL:
Get the magnitude of an int without overflowing on INT_MIN.

TODO:
1. Convert through a wider signed type or use safe unsigned arithmetic.
2. Return the positive magnitude as unsigned int.

EXPECTED OUTPUT:
42
0
2147483648
*/

int	main(void)
{
	printf("%u\n", ft_unsigned_magnitude(-42));
	printf("%u\n", ft_unsigned_magnitude(0));
	printf("%u\n", ft_unsigned_magnitude(INT_MIN));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_unsigned_magnitude represent?
2. Why does this task require: convert through a wider signed type or use safe unsigned arithmetic?
3. Which boundary condition could change the result?
4. How does ft_unsigned_magnitude support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_01

cat > 02_ft_reverse_digits.c <<'EXERCISE_02'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

unsigned int	ft_reverse_digits(unsigned int n)
{
	
}

/*
GOAL:
Reverse decimal digits numerically.

TODO:
1. Extract the last digit using modulo ten.
2. Append it to the result.
3. Remove the last digit from n.

EXPECTED OUTPUT:
4321
21
*/

int	main(void)
{
	printf("%u\n", ft_reverse_digits(1234));
	printf("%u\n", ft_reverse_digits(120));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_reverse_digits represent?
2. Why does this task require: extract the last digit using modulo ten?
3. Which boundary condition could change the result?
4. How does ft_reverse_digits support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_02

cat > 03_ft_int_to_string.c <<'EXERCISE_03'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_int_to_string(int n)
{
	
}

/*
GOAL:
Allocate a new decimal string representing an int.

TODO:
1. Determine sign and digit count.
2. Allocate space for digits, optional minus, and NUL.
3. Fill the string and return it.

EXPECTED OUTPUT:
-2048
0
*/

int	main(void)
{
	char	*a = ft_int_to_string(-2048);
	char	*b = ft_int_to_string(0);

	if (!a||!b)return (free(a), free(b), 1);
	printf("%s\n%s\n", a, b);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_int_to_string represent?
2. Why does this task require: determine sign and digit count?
3. Which boundary condition could change the result?
4. How does ft_int_to_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_03

cat > 04_ft_parse_digits.c <<'EXERCISE_04'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

unsigned int	ft_parse_digits(const char *digits)
{
	
}

/*
GOAL:
Parse a nonempty sequence of decimal digits.

TODO:
1. Start with value zero.
2. Multiply the accumulated value by ten.
3. Add the next digit value.

EXPECTED OUTPUT:
1234
7
*/

int	main(void)
{
	printf("%u\n", ft_parse_digits("1234"));
	printf("%u\n", ft_parse_digits("007"));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_parse_digits represent?
2. Why does this task require: start with value zero?
3. Which boundary condition could change the result?
4. How does ft_parse_digits support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_04

cat > 05_ft_parse_int.c <<'EXERCISE_05'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

int	ft_parse_int(const char *str)
{
	
}

/*
GOAL:
Implement atoi - like parsing of whitespace, sign and digits.

TODO:
1. Skip ASCII whitespace.
2. Read one optional sign.
3. Accumulate digits until a nondigit.

EXPECTED OUTPUT:
-42
17
0
*/

int	main(void)
{
	printf("%d\n", ft_parse_int("  -42"));
	printf("%d\n", ft_parse_int("+17abc"));
	printf("%d\n", ft_parse_int("xyz"));
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_parse_int represent?
2. Why does this task require: skip ascii whitespace?
3. Which boundary condition could change the result?
4. How does ft_parse_int support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_05

cat > 06_ft_limits_to_string.c <<'EXERCISE_06'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_limits_to_string(int n)
{
	
}

/*
GOAL:
Convert the full signed int range to newly allocated strings.

TODO:
1. Handle the negative sign without negating INT_MIN as int.
2. Allocate enough bytes.
3. Terminate each string with NUL.

EXPECTED OUTPUT:
-2147483648
2147483647
*/

int	main(void)
{
	char	*a = ft_limits_to_string(INT_MIN);
	char	*b = ft_limits_to_string(INT_MAX);

	if (!a||!b)return (free(a), free(b), 1);
	printf("%s\n%s\n", a, b);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_limits_to_string represent?
2. Why does this task require: handle the negative sign without negating int_min as int?
3. Which boundary condition could change the result?
4. How does ft_limits_to_string support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_06

cat > 07_ft_format_signed.c <<'EXERCISE_07'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>
#include <stdint.h>

char	*ft_format_signed(int n, unsigned int min_width)
{
	
}

/*
GOAL:
Format an integer into a newly allocated, space - padded string.

TODO:
1. Convert n into decimal characters.
2. Compute spaces required for the minimum width.
3. Left-pad with spaces and preserve the minus sign.

EXPECTED OUTPUT:
[  -42]
[  7]
*/

int	main(void)
{
	char	*a = ft_format_signed(-42, 5);
	char	*b = ft_format_signed(7, 3);

	if (!a||!b)return (free(a), free(b), 1);
	printf("[%s]\n[%s]\n", a, b);
	free(a);
	free(b);
	return (0);
}

/*
EDGE CASES:
Check zero, negatives where supported, integer limits, and invalid digits.

LEARNING CHECK:
1. What do the parameters of ft_format_signed represent?
2. Why does this task require: convert n into decimal characters?
3. Which boundary condition could change the result?
4. How does ft_format_signed support Libft-related pointer and memory skills?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_07

cat > 08_ft_parse_unsigned.c <<'EXERCISE_08'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

unsigned int	ft_parse_unsigned(const char *s)
{
	
}

/*
GOAL:
Parse ASCII decimal digits into unsigned int.

TODO:
1. Stop at first non-digit; accumulate within the documented range.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 123
*/

int	main(void)
{
	printf("Test 1: %u\n", ft_parse_unsigned("123x"));
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_parse_unsigned represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_08

cat > 09_ft_format_unsigned.c <<'EXERCISE_09'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_format_unsigned(unsigned int n)
{
	
}

/*
GOAL:
Allocate a decimal string for an unsigned integer.

TODO:
1. Count decimal digits; allocate; fill digits backward.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 429
*/

int	main(void)
{
	char	*s = ft_format_unsigned(429U);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_format_unsigned represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_09

cat > 10_ft_format_hex.c <<'EXERCISE_10'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_format_hex(unsigned int n)
{
	
}

/*
GOAL:
Allocate lowercase hexadecimal digits for n.

TODO:
1. Count base-16 digits; convert n; terminate.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: ff
*/

int	main(void)
{
	char	*s = ft_format_hex(255U);

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_format_hex represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_10

cat > 11_ft_format_base.c <<'EXERCISE_11'
#include <stdio.h>
#include <stdlib.h>
#include <stddef.h>
#include <string.h>
#include <limits.h>

char	*ft_format_base(unsigned int n, const char *digits)
{
	
}

/*
GOAL:
Convert unsigned integer using a valid base alphabet (2–16 chars).

TODO:
1. Determine base length; repeatedly divide; allocate string.
2. Check the documented boundary conditions and return contract.

EXPECTED OUTPUT:
Test 1: 1010
*/

int	main(void)
{
	char	*s = ft_format_base(10U, "01");

	if (s)
	{
		printf("Test 1: %s\n", s);
		free(s);
	}
	return (0);
}

/*
EDGE CASES:
Check empty or invalid inputs and confirm any allocation ownership.

LEARNING CHECK:
1. What does each parameter in ft_format_base represent?
2. What is the central operation you must implement?
3. Which input boundary changes the result?
4. How does this concept prepare you for Libft?

NOTE:
The function is intentionally empty. Implement it yourself.
Do not run tests until you implement non-void functions.
Keep implementation functions at or below 25 lines and respect 42 Norm.
*/
EXERCISE_11

echo "Reset 12 exercises in 05_integer_conversions"
