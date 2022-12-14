Program MyFormatter;

{$APPTYPE CONSOLE}

{$R *.res}

Uses
  ASTNode In 'ASTNode.pas',
  Lexer In 'Lexer.pas',
  List In 'List.pas',
  Parser In 'Parser.pas',
  StringUtils In 'StringUtils.pas',
  TypeDef In 'TypeDef.pas',
  ExprRuleUnit In 'ProductionRule\ExprRuleUnit.pas',
  FactorRuleUnit In 'ProductionRule\FactorRuleUnit.pas',
  TermRuleUnit In 'ProductionRule\TermRuleUnit.pas',
  AddRule In 'LexerRule\AddRule.pas',
  DivRule In 'LexerRule\DivRule.pas',
  EofRule In 'LexerRule\EofRule.pas',
  LParentRule In 'LexerRule\LParentRule.pas',
  MulRule In 'LexerRule\MulRule.pas',
  NumRule In 'LexerRule\NumRule.pas',
  RParentRule In 'LexerRule\RParentRule.pas',
  SubRule In 'LexerRule\SubRule.pas',
  BinaryOpNode In 'AST\BinaryOpNode.pas',
  LiteralNode In 'AST\LiteralNode.pas',
  Test In 'Test\Test.pas';

Begin
  Test1();
End.
