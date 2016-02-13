// numbers.cpp: определяет точку входа для консольного приложения.
//

#include "stdafx.h"
#include "windows.h"


int _tmain(int argc, _TCHAR* argv[])
{
FILE *Fre;
FILE *Fin, *Flog;

float re,im,x;
unsigned long l;

    l=0;

//	re=1.0/524287.0 ;im=2; printf("  %X       %X \n",re,im);
	x=1.0 ; printf("%d %f ",x,x);

	Fre=fopen("..\\..\\..\\win_re.txt","w");
	Fin=fopen("..\\..\\..\\win_re.hex","r");
	while(! feof(Fin) ){
		fscanf(Fin,"%x%x\n",&re,&im);
		fprintf(Fre,"%f %f \n",re,im);
	}
    fclose(Fre);    fclose(Fin);

	Flog=fopen("..\\..\\..\\win_log.txt","w");
	Fin=fopen("..\\..\\..\\win_log.hex","r");
	while(! feof(Fin) ){
		fscanf(Fin,"%x\n",&re );
		fprintf(Fre,"%f \n",re);
	}
    fclose(Flog);    fclose(Fin);


	Flog=fopen("..\\..\\..\\win_sncs.txt","w");
	Fin=fopen("..\\..\\..\\win_sncs.hex","r");
	while(! feof(Fin) ){
		fscanf(Fin,"%x %x\n",&re,&im );
		fprintf(Fre,"%f  %f\n",re,im);
	}
    fclose(Flog);    fclose(Fin);


	Flog=fopen("..\\..\\..\\win_sin.txt","w");
	Fin=fopen("..\\..\\..\\win_sin.hex","r");
	while(! feof(Fin) ){
		fscanf(Fin,"%x\n",&re,&im );
		fprintf(Fre,"%f\n",re,im);
	}
    fclose(Flog);    fclose(Fin);

	return 0;
}

