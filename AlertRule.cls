Class Hospital.AlertRule Extends Ens.Rule.Definition
{

Parameter RuleAssistClass = "EnsLib.MsgRouter.RuleAssist";

XData RuleDefinition [ XMLNamespace = "http://www.intersystems.com/rule" ]
{
<ruleDefinition alias="" context="EnsLib.MsgRouter.RoutingEngine" production="HICGTest.Hospital">
<ruleSet name="" effectiveBegin="" effectiveEnd="">
<rule name="">
<constraint name="msgClass" value="Ens.AlertRequest"></constraint>
<when condition="1" comment="">
<send transform="" target="EMailAlert"></send>
<return></return>
</when>
</rule>
</ruleSet>
</ruleDefinition>
}

}
