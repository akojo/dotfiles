for i in $(seq 0 255); do
  printf "\033[38;5;${i}mcolour${i}\n"
done
