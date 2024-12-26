#!/bin/bash

# Згенерувати 5 випадкових додатних чисел і записати їх у файл
for i in {1..5}; do
  echo $((RANDOM + 1)) >> numbers.txt
done

# Вивести згенеровані числа на екран
echo "Згенеровані числа:"
cat numbers.txt

# Знайти найменше число
min=$(sort -n numbers.txt | head -n 1)

# Записати найменше число у файл
echo $min > numbers.txt

# Вивести результат на екран
echo "Найменше число:"
cat numbers.txt
