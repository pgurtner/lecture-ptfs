#include <math.h>
#include <stdio.h>
#include "timing.h"

double approximate_pi () {
	int SLICES = 1000000000;
	double sum=0.;
	double delta_x = 1.0/SLICES;

	for (int i=0; i < SLICES; i++) {
	  	double x = (i+0.5)*delta_x;
  		sum += 4.0 * sqrt(1.0 - x * x);
	}
	double Pi = sum * delta_x;

	return Pi;
}

int main (void) {
	double wcTimeStart = getTimeStamp();
	double pi = approximate_pi();
	double wcTimeEnd = getTimeStamp();
	printf("pi: %lf, time: %lf\n", pi, wcTimeEnd - wcTimeStart);
	return 0;
}
