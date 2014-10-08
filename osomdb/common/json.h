#ifndef JSON_H_SEEN
#define JSON_H_SEEN

#include <exception>

namespace json {

class invalid_json: public std::exception {
};

char *parse_json_to_binary(char *) throw(invalid_json);
  
};
  
#endif
  