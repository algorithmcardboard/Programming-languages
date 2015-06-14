%{
#include <iostream>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
\<[a-zA-Z0-9]+>         { cout << "start of a tag" << yytext << endl; }
\<\/[a-zA-Z0-9]+>         { cout << "end of a tag" << yytext << endl; }
%%
