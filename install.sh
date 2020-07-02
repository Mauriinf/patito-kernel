#!/bin/bash
cd judge
make
chmod +x judged
cp -vf  judged /usr/bin
cd ..

cd judge_client
make
chmod +x judge_client
cp -vf judge_client /usr/bin
cd ..
#cd /home/judge/src/core/sim/sim_2_67
#make fresh
#make exes
#chmod +x sim*
#cp sim_c.exe /usr/bin/sim_c
#cp sim_java.exe /usr/bin/sim_java
#cp sim_pasc.exe /usr/bin/sim_pas
#cp sim_text.exe /usr/bin/sim_text
#cd ..

#cp sim.sh /usr/bin
#chmod +x /usr/bin/sim.sh
#rm /usr/bin/sim_cc /usr/bin/sim_rb /usr/bin/sim_sh
#ln -s /usr/bin/sim_c /usr/bin/sim_cc
#ln -s /usr/bin/sim_text /usr/bin/sim_rb
#ln -s /usr/bin/sim_text /usr/bin/sim_sh


#########
cp judged /etc/init.d/judged
chmod +x  /etc/init.d/judged

#ln -sf /etc/init.d/judged /etc/rc3.d/S93judged
#ln -sf /etc/init.d/judged /etc/rc2.d/S93judged

/etc/init.d/judged stop

/etc/init.d/judged restart

/etc/init.d/judged status
