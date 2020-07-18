codeunit 70001 CustomSalesOption
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeConfirmSalesPost', '', true, true)]
    local procedure ChangeDefaultOption(var SalesHeader: Record "Sales Header"; var DefaultOption: Integer)
    begin
        IF SalesHeader."Document Type" <> SalesHeader."Document Type"::Order THEN
            exit;
        DefaultOption := 2;
    end;
}