%{
#include <iostream>
#include <string>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
\<[a-zA-Z0-9:\.=]+[ a-zA-Z0-9="/\.:]*> {
                            string matchedText = yytext;
                            size_t position = matchedText.find(" ");
                            position == string::npos? position = matchedText.length() - 2 : position = position;
                            cout << "open " << matchedText.substr(1, position) << endl;
                        }
\<\/[a-zA-Z0-9]+>       {
                            string matchedText = yytext;
                            cout << "close " << matchedText.substr(2, matchedText.length() - 3) << endl;
                        }
.                       {}
%%
