Unit IdNode;

{$IFDEF FPC}
{$MODE DELPHI}
{$ENDIF}

Interface

Uses
  ASTNode;

Type
  PIdNode = ^TIdNode;

  TIdNode = Record
    Parent: TAstNode;
    Value: String;
  End;

Procedure TIdNode_Create(Self: PIdNode; Value: String);
Procedure TIdNode_Destroy(Self: PAstNode);

Implementation

Procedure TIdNode_Create(Self: PIdNode; Value: String);
Begin
  TAstNode_Create(PAstNode(Self), $4);
  Self.Parent.VMT.Destory := TIdNode_Destroy;

  Self.Value := Value;
End;

Procedure TIdNode_Destroy(Self: PAstNode);
Begin
  TAstNode_Destroy(Self);
End;


End.