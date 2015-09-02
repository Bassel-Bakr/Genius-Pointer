#include "debug.h"
#include "sptr.h"

#include <utility>

class s {
public:
  int x;
   s() {
    __LOG(--->s());
  } ~s() {
    __LOG(--->~s());
  }
};

void test(sptr < s > &&instance) {
  __LOG(void test(sptr < s > &instance));
  printf("%u\n", instance.__count);
}

int main() {
  sptr < s > p(new s[3], sptr < s >::array_deleter);
  p[0].x = 1;
  printf("1:  %d\n", p[0].x);
  printf("2:  %d\n", p[1].x);
  printf("3:  %d\n", p[2].x);
  return 0;
}
