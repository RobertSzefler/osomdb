#ifndef JSON_H_SEEN
#define JSON_H_SEEN

namespace json {

class InvalidJSON {
};

char *parse_json_to_binary(char *) throw(InvalidJSON);
  
};
  
#endif
  