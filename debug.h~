#ifndef __DEBUG_H__
#  define __DEBUG_H__

#  define DEBUG 1

#  ifdef DEBUG
#    include <cassert>
#    include <cstdio>

#    define LOG(x) puts(x)
#    define __LOG(x) puts(#x)
#    define ASSERT(x) assert(x)

#  else

#    define LOG(x)
#    define __LOG(x)
#    define ASSERT(x)

#  endif

#endif
