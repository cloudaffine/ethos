#ifndef ARVOS_ASSERT_H
#define ARVOS_ASSERT_H

#include "stdio.h"

#ifdef NDEBUG

#define assert(ignore) ((void)0)

#else

#define assert(expression)  \
	((void)((expression) ? 0 : \
		(printf(__FILE__":%u failed assertion failure \n", \
			__LINE__), 0)))

#define assert_type(type, size)  \
    (assert(sizeof(type) == (size)))

#endif

#endif //ARVOS_ASSERT_H
