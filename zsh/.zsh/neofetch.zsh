columns=$(tput cols)
rows=$(tput lines)

if [ $columns -lt 80 ] || [ $rows -lt 25 ]; then
    neofetch --backend off
else
    neofetch
fi