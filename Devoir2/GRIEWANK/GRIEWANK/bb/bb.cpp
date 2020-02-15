#include <cmath>
#include <iostream>
#include <fstream>
#include <cstdlib>
#include <iomanip>
using namespace std;

#define N 2

int main ( int argc , char ** argv ) {

  int    i;
  double f = 1e20;

  if ( argc >= 2 ) {

    double x[N];
  
    if ( argc == 3 ) {

      x[0] = atof(argv[1]);
      x[1] = atof(argv[2]);

      f = 1.0 + (x[0]*x[0] + x[1]*x[1]) / 4000.0 - cos(x[0]) * cos(x[1]/sqrt(2.0));
    }
    else {

      double sum = 0 , prod = 1;
      ifstream in ( argv[1] );

      for ( i = 0 ; i < N ; ++i ) {
	in >> x[i];
	sum  += x[i]*x[i];
	prod *= cos(x[i]/sqrt(i+1.0));
      }
      
      in.close();

      if ( !in.fail() )
	f = sum/4000.0 - prod + 1;

    }



  }

  cout.setf(ios::fixed);
  cout.precision(15);

  cout << f << endl;

  return 0;
}
