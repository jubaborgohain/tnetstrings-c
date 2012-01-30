#include <stdio.h>
#include <string.h>

%%{ 
    machine tnetstrings_lexer;
    
    size = digit{1,9};
    colon = ':';
    type = '#'|'}'|']'|','|'!'|'~'|'^';
    data = (any-type)*;  

    main := (size colon data type)+;
}%%

%% write data;

int main(int argc, char **argv)
{
  int cs;
  if(argc > 1) {
    char *p = argv[1];
    char *pe = p + strlen(p);
    %% write init;
    %% write exec;
  }
  
  return 0;
}