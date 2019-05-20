page 50100 "Doc"
{
    PageType = API;
    Caption = 'Doc';
    APIPublisher = 'Doc';
    APIGroup = 'Flow';
    APIVersion = 'v1.0';
    EntityName = 'Doc';
    EntitySetName = 'Docs';
    SourceTable = header;
    DelayedInsert = true;

    layout
    {
        area(Content)
        {
            repeater(Docs)
            {
                field(id; id)
                {
                    Caption = 'id';
                    ApplicationArea = All;
                }
                field(name; name)
                {
                    Caption = 'name';
                    ApplicationArea = all;

                }
                field("DateTime"; "Date/time")
                {
                    Caption = 'datetime';
                    ApplicationArea = All;
                }

                part(lines; SalesLine)
                {
                    Caption = 'lines', Locked = true;
                    EntityName = 'SalesLine';
                    EntitySetName = 'SalesLines';
                    ApplicationArea = All;
                }
            }
        }
    }
}