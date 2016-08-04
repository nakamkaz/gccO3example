gcc --version
gcc -S     sum1.c -o sum1.s
gcc -S     sumf.c -o sumf.s
gcc -O3 -S sum1.c -o sum1-O3.s
gcc -O3 -S sumf.c -o sumf-O3.s
echo "==== diff sum1.s sumf.s"
diff sum1.s sumf.s
echo "==== diff sum1-O3.s sumf-O3.s"
diff sum1-O3.s sumf-O3.s

