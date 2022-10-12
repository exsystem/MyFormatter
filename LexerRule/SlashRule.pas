Unit SlashRule;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

Interface

Uses
  Lexer;

Function Parse(Lexer: PLexer): Boolean;
Function Compose(): TLexerRule;

Implementation

Uses
  SymbolRule;

Function Parse(Lexer: PLexer): Boolean;
Begin
  Result := SymbolRule.Parse(Lexer, '/');
End;

Function Compose(): TLexerRule;
Begin
  Result.TokenKind := eSlash;
  Result.Parser := Parse;
End;

End.
