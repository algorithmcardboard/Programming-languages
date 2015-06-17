%{
#include <iostream>
#include <string>
#include "xml.tab.h"
using namespace std;
%}

%option noyywrap

%%
\<[a-zA-Z0-9:\.=]+[ a-zA-Z0-9="/\.:]*> {
                            string matchedText = yytext;
                            size_t position = matchedText.find(" ");
                            position == string::npos? position = matchedText.length() - 2 : position = position;
                            yylval.sval = (char*)matchedText.substr(1, position).c_str();
                            cout << "open " << yylval.sval << endl;
                            return TAG_START;
                        }
\<\/[a-zA-Z0-9]+>       {
                            string matchedText = yytext;
                            yylval.sval = (char*)matchedText.substr(2, matchedText.length() - 3).c_str();
                            cout << "close " << yylval.sval << endl;
                            return TAG_END;
                        }
.                       { return STR; }
%%
