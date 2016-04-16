#include <stdio.h>
#include <sys/types.h>
#include <unistd.h>
#include <stdlib.h>


int main(int args, char *argv[]) {  
	
	char *buff;
	buff=(char *)malloc(10*sizeof(char));

	// store login to buff
	getlogin_r(buff,10);

	// I am now root!
    setuid(0);
    clearenv();
    char buf[1024];

    // users can run the script as root without password
	snprintf(buf, sizeof(buf), "/var/deploy/'%s'.sh '%s'", argv[1], buff);
	system(buf);

}