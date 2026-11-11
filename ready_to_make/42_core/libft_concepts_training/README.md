# 💻 Libft Concepts Training

A 120-exercise C learning pathway inspired by the uploaded Libft concepts pack. Work through the folders in order; each category has **12 exercises numbered `00`–`11`**.

## 📁 Structure

| Folder | Focus |
| --- | --- |
| `00_pointer_arithmetic` | Pointer movement, indirection, pointer arrays |
| `01_raw_memory` | Byte copying, overlap, comparison, bytewise access |
| `02_memory_ownership` | Allocation, freeing, ownership handoffs |
| `03_string_search` | Searching, comparisons, bounded operations |
| `04_new_strings` | Allocated substrings, joins, trimming, splitting |
| `05_integer_conversions` | Parsing, integer formatting, bases |
| `06_callbacks` | Function pointers and mapping |
| `07_linked_lists` | Singly linked lists with integer-valued nodes |
| `08_memory_edge_cases` | Overflow checks and failure cleanup |
| `09_advanced_linked_lists` | Reversal, node removal, cycles, list algorithms |

`practice_list.h` supplies the **integer-valued learning node** for list exercises. The official Libft bonus uses `void *content` instead; adapt your knowledge to that official type when working on the project.

## 🎯 Learning Goals

Build confidence with pointers, allocation ownership, byte operations, strings, callbacks, and linked-list manipulation. Exercise functions are intentionally **empty**, not solved. Complete and compile them one by one.

## ⚙️ Reset Exercises

**Warning:** reset scripts overwrite your completed exercise implementations.

```bash
bash 00_pointer_arithmetic/create_exercises.sh
bash reset_folders.sh
```

Each generator modifies only its own twelve `.c` templates and creates no folders. The root reset runs all ten generators.

## 🧪 Testing

```bash
cc -Wall -Wextra -Werror 00_pointer_arithmetic/00_ft_read_pointer.c -o /tmp/test_c
/tmp/test_c
```

Test `printf`, `malloc`, and `free` are permitted in the **test harness**; exercise instructions specify the allowed implementation functions. **Do not execute non-void exercises before implementing them**, as reaching the end of an empty non-void function is undefined behavior.

For allocation-heavy exercises, try `cc -g -fsanitize=address ...` on a supported compiler. Test helpers are examples, not substitutes for writing additional edge-case tests.

## 📚 Final Project

Use these exercises to prepare for Libft and its bonus linked-list portion. Official project requirements and function prototypes take precedence over these practice contracts.

> **Practice note:** These are learning exercises, not the official Codam Libft subject.
> Follow your current project PDF for definitive function prototypes and allowed calls.
