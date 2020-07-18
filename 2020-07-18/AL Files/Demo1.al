tableextension 70000 ItemExtension extends Item
{
    fields
    {
        field(50000; "Demo"; Text[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    fieldgroups
    {
        addlast(DropDown; Demo)
        { }
    }
}