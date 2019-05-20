table 50101 Lines
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "id"; Integer)
        {
            Caption = 'id';
            DataClassification = CustomerContent;
        }
        field(2; "lineno"; Integer)
        {
            caption = 'lineno';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; id, lineno)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}