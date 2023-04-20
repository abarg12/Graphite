###### Testing binary operators
### [positive test]

int a = 1;
int b = 2;
int c = 1 + 2;
printf(c);

int d = c + c;
printf(d);


float e = 1.1 + 2.2;
float f = 6.6;
float g = e + f;
printf(g);

float h = 2.0;
float i = g / h;
printf(i);

bool j = false;
bool k = true;
bool l = j or k;
printf(l);

bool m = 10 < 20;
bool n = 20 <= 20;
bool o = m and n;
printf(o);

bool p = true or false or true or false;
bool q = 3 >= 2 == true;
bool r = p and q;
printf(r);

bool s = 2.2 != 3.3;
bool t = 10 - 5 > 4;
bool u = s or t;
printf(u);
