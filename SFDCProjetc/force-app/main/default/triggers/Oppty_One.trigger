trigger Oppty_One on Opportunity (before insert) {
    for(opportunity o:trigger.new)
    {
        o.stagename='Prospecting';
        o.closedate=system.today()+15;
        
    }

}