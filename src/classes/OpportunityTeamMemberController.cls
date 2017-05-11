public class OpportunityTeamMemberController {
    public String accessLevelSelected{get;set;}
    public OpportunityTeamMember opptyTeamMember{get;set;}
    public OpportunityTeamMemberController(ApexPages.StandardController controller) {
            opptyTeamMember = new OpportunityTeamMember();
            opptyTeamMember.OpportunityId = ((Opportunity)controller.getRecord()).Id;
            opptyTeamMember.OpportunityAccessLevel = accessLevelSelected;
            opptyTeamMember.TeamMemberRole = 'Sales Manager';
            
    }
    public void insertOTM(){
        Database.insert(opptyTeamMember);
    }
    
        
}