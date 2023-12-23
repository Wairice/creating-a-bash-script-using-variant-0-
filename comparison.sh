#!/bin/bash

#1620/6=0

# Перевірка наявності двох числових параметрів
if [ "$#" -ne 2 ]; then
    echo "Потрібно ввести два числових параметри."
    exit 1
fi

# Збереження числових параметрів у змінні
par1=$1
par2=$2

# Порівняння числових параметрів та виконання відповідної дії
if [ "$par1" -gt "$par2" ]; then
    echo "1-й параметр більше за 2-й."
    echo "Список псевдонімів вашої системи:"
    alias
else
    echo "1-й параметр не більше за 2-й."
    echo "Розмір файлу скрипта \"$0\":"

    # Отримання розміру файлу скрипта
    script_size=$(wc -c < "$0")
    echo "$script_size байт"
fi

exit 0
