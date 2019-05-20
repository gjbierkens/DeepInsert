page 50101 SalesLine
{
    Caption = 'SalesLine';
    PageType = ListPart;
    DelayedInsert = true;
    SourceTable = Lines;

    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field(lineno; lineno)
                {
                    Caption = 'lineno';
                    ApplicationArea = All;

                }
            }
        }
    }
}