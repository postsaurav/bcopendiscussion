page 90000 "Demo Page"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    layout
    {
        area(Content)
        {
            repeater(DemoGroup)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(BlockCustomer)
            {
                ApplicationArea = All;
                Image = DisableBreakpoint;
                Promoted = true;

                trigger OnAction();
                var
                    Customer: Record Customer;
                begin
                    Customer.Get(Rec."No.");
                    Customer.Blocked := Customer.Blocked::All;
                    Customer.Modify(true);
                    OpenRecord(Customer);
                end;
            }
        }
    }


    local procedure OpenRecord(Customer: Record Customer)
    var
        CustomerCard: Page "Customer Card";
    begin
        CustomerCard.SetTableView(Customer);
        CustomerCard.Run;
    end;
}