table 50100 header
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "id"; Integer)
        {
            Caption = 'id';
            DataClassification = CustomerContent;
        }
        field(2; "name"; text[250])
        {
            Caption = 'Name';
            DataClassification = CustomerContent;
        }
        field(3; "Date/time"; DateTime)
        {
            Caption = 'Date/time';
            DataClassification = CustomerContent;
        }

    }

    keys
    {
        key(PK; "id")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        IF headerrec.FindLast() then
            id := headerrec.id + 1
        else
            id := 1;
        "Date/time" := CurrentDateTime();
    end;

    var
        headerrec: Record header;
}