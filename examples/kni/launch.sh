#!/usr/bin/env sh
kernver=`uname -r`
module=/lib/modules/${kernver}/extra/dpdk/rte_kni.ko
ls -l ${module}
sudo insmod ${module}
build/kni -c 0x0f -n 2 -- -P -p 0x3 --config="(0,0,1),(1,2,3)" 
echo "http://hustcat.github.io/kni-in-dpdk/"
