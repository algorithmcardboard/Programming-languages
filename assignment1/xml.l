%{
#include <iostream>
#include <string>
using namespace std;
#define YY_DECL extern "C" int yylex()
%}
%%
\<[a-zA-Z0-9]+>         {
                            string matchedText = yytext;
                            cout << "open " << matchedText.substr(1, matchedText.length() - 2) << endl;
                          }
\<\/[a-zA-Z0-9]+>       {
                            string matchedText = yytext;
                            cout << "close " << matchedText.substr(2, matchedText.length() - 3) << endl;
                          }
%%
