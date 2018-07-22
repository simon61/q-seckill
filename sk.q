name:`p01; nstock:100; ppl:1000*10000; xxx:2.71828; n2:ppl div 12; n1:n2*12; req:([]id:1+til ppl; name:ppl#name);

sss:system "cat /dev/urandom 2>/dev/null| head -n 128 | cksum | cut -c 1-6"; system "S ",string -201401+first "I"$sss;
god:where xxx < -6 + sum n2 cut n1?1f; rpt:select[nstock] from req where id in god;

system "c ",(string nstock+9)," 100"; show rpt;
