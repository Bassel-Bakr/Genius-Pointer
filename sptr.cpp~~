#include "sptr.h"

template < typename T > sptr < T >::sptr() {
  __LOG(sptr < T >::sptr());
  __pointer = 0;
  __deleter = 0;
  __count = 0;
}

        // Default
template < typename T > sptr < T >::sptr(T * pointer,
                                         std::function < void (T *) >
                                         deleter = nullptr) {
  __LOG(sptr <
        T >::sptr(T * pointer, std::function < void (T *) > deleter = nullptr));
  __pointer = pointer;
  __deleter = deleter;
  __count = 1;
}

template < typename T > sptr < T >::sptr(const T * pointer,
                                         std::function < void (T *) >
                                         deleter = nullptr) {
  __LOG(sptr <
        T >::sptr(const T * pointer, std::function < void (T *) > deleter =
                  nullptr));
  __pointer = pointer;
  __deleter = deleter;
  __count = 1;
}


        // Not a reference?!
        /*
           explicit sptr::sptr(sptr spointer, std::function<void(T*)> deleter = nullptr) {
           *this = spointer;
           spointer.__pointer = 0;
           spointer.__deleter = 0;
           spointer.__count = 0;
           }

           explicit sptr::sptr(const sptr spointer, std::function<void(T*)> deleter = nullptr) {
           *this = spointer;
           spointer.__pointer = 0;
           spointer.__deleter = 0;
           spointer.__count = 0;
           }
         */


        // Copy constructor
template < typename T > sptr < T >::sptr(sptr < T > &spointer,
                                         std::function < void (T *) >
                                         deleter = nullptr) {
  __LOG(sptr <
        T >::sptr(sptr < T > &spointer, std::function < void (T *) > deleter =
                  nullptr));
  __pointer = spointer.__pointer;
  __deleter = deleter ? deleter : spointer.__deleter;
  __count = spointer.__count + 1;
}

template < typename T > sptr < T >::sptr(const sptr < T > &spointer,
                                         std::function < void (T *) >
                                         deleter = nullptr) {
  __LOG(sptr <
        T >::sptr(const sptr < T > &spointer,
                  std::function < void (T *) > deleter = nullptr));
  __pointer = spointer.__pointer;
  __deleter = deleter ? deleter : spointer.__deleter;
  __count = spointer.__count + 1;
}



        // Move constructor
template < typename T > sptr < T >::sptr(sptr < T > &&spointer,
                                         std::function < void (T *) >
                                         deleter = nullptr) {
  __LOG(sptr <
        T >::sptr(sptr < T > &&spointer, std::function < void (T *) > deleter =
                  nullptr));
  if (spointer.__pointer != this->__pointer) {
    __LOG(sptr <
          T >::sptr(sptr < T > &&spointer,
                    std::function < void (T *) > deleter = nullptr) OK);

    this->__count = spointer.__count;
    this->__deleter = spointer.__deleter;
    this->__pointer = spointer.__pointer;

    spointer.__pointer = 0;
    spointer.__deleter = 0;
    spointer.__count = 0;
  }
}


        // Default assignment
template < typename T > sptr < T > &sptr < T >::operator=(T * pointer) {
  __LOG(sptr < T > &sptr < T >::operator=(T * pointer));
  __pointer = pointer;
  __count = 1;
  return *this;
}

template < typename T > sptr < T > &sptr < T >::operator=(const T * pointer) {
  __LOG(sptr < T > &sptr < T >::operator=(const T * pointer));
  __pointer = pointer;
  __count = 1;
  return *this;
}


        // Not reference assignment?!
template < typename T > sptr < T > &sptr < T >::operator=(sptr < T > spointer) {
  __LOG(sptr < T > &sptr < T >::operator=(sptr < T > spointer));
  *this = spointer;
  spointer.__pointer = 0;
  spointer.__deleter = 0;
  spointer.__count = 0;
  return *this;
}

        /*
           sptr& sptr::operator=(const sptr spointer) {
           *this = spointer;
           spointer.__pointer = 0;
           spointer.__deleter = 0;
           spointer.__count = 0;
           return *this;
           }
         */


        // Copy assignment
template < typename T > sptr < T > &sptr < T >::operator=(sptr < T > &spointer) {
  __LOG(sptr < T > &sptr < T >::operator=(sptr < T > &spointer));
  __pointer = spointer.__pointer;
  __deleter = spointer.__deleter;
  __count = spointer.__count + 1;
  return *this;
}

template < typename T > sptr < T > &sptr < T >::operator=(const sptr < T >
                                                          &spointer) {
  __LOG(sptr < T > &sptr < T >::operator=(const sptr < T > &spointer));
  __pointer = spointer.__pointer;
  __deleter = spointer.__deleter;
  __count = spointer.__count + 1;
  return *this;
}


        // Move assignment
template < typename T > sptr < T > &sptr < T >::operator=(sptr < T > &&spointer) {
  __LOG(sptr < T > &sptr < T >::operator=(sptr < T > &&spointer));
  if (spointer.__pointer != this->__pointer) {
    __LOG(sptr < T > &sptr < T >::operator=(sptr < T > &&spointer) OK);

    this->__count = spointer.__count;
    this->__deleter = spointer.__deleter;
    this->__pointer = spointer.__pointer;

    spointer.__pointer = 0;
    spointer.__deleter = 0;
    spointer.__count = 0;
  }
  return *this;
}


        /*
         *  Magic starts here
         */

template < typename T > T * sptr < T >::operator->() {
  __LOG(T * sptr < T >::operator->());
  return __pointer;
}


template < typename T > T * sptr < T >::operator&() {
  __LOG(T * sptr < T >::operator&());
  return __pointer;
}


template < typename T > T sptr < T >::operator*() {
  __LOG(T sptr < T >::operator*());
  return *__pointer;
}


template < typename T > T sptr < T >::operator[](int index) {
  __LOG(sptr < T >::operator[](int index));
  return __pointer[index];
}


template < typename T > sptr < T > &sptr < T >::operator++() {
  __LOG(sptr < T > &sptr < T >::operator++());
  ++__pointer;
  return this;
}

template < typename T > sptr < T > &sptr < T >::operator++(int offset) {
  __LOG(sptr < T > &sptr < T >::operator++(int offset));
  sptr < T > tmp(*this);
  operator++();
  return tmp;
}


template < typename T > sptr < T > &sptr < T >::operator--() {
  __LOG(sptr < T > &sptr < T >::operator--());
  --__pointer;
  return this;
}

template < typename T > sptr < T > &sptr < T >::operator--(int offset) {
  __LOG(sptr < T > &sptr < T >::operator--(int offset));
  sptr < T > tmp(*this);
  operator--();
  return tmp;
}


template < typename T > sptr < T > &sptr < T >::operator+=(int offset) {
  __LOG(sptr < T > &sptr < T >::operator+=(int offset));
  __pointer += offset;
  return this;
}

template < typename T > sptr < T > &sptr < T >::operator-=(int offset) {
  __LOG(sptr < T > &sptr < T >::operator-=(int offset));
  __pointer -= offset;
  return this;
}

        /*
         *  Magic ends here
         */

        // Destructor
template < typename T > sptr < T >::~sptr() {
  __LOG(sptr < T >::~sptr());
  if (--__count == 0)
    if (__deleter)
      __deleter(__pointer);
    else
      delete __pointer;
}

template < typename T > void sptr < T >::dump() {
  printf("Pointer: 0x%x\n"
         "Count: %u\n" "Deleter: 0x%x\n", __pointer, __count, __deleter);
}
