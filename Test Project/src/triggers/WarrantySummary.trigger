trigger WarrantySummary on Case (after insert) {
    for (Case myCase : Trigger.new){

    }
    /*
    Product purchased on <<Purchase Date>> and case created on <<Case Created date>>. 
    Warranty is for <<Warrranty Total Days>> and is <<Warranty Percentage>> through its warranty period. 
    extended Warranty: <<Has Extended Warranty>>
    Have a nice day!
    */
}