/**
 * Created by gerry on 9/26/2020.
 */

trigger Case_Trigger on Case (before update, before insert)
{
	if(!Util_Trigger_Name_Bypass.bypassedTriggers.contains('Case_Trigger'))
	{
		Case_Trigger_Handler.beforeUpdate(trigger.new);
		Case_Trigger_Handler.beforeInsert(trigger.new);
	}
}