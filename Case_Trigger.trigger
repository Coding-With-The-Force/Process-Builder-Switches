/**
 * Created by gerry on 9/26/2020.
 */

//Our Case Trigger. Please use a trigger framework and never put logic in your triggers.
//I created this trigger in this way for demonstration purposes only and to
//simplify this lesson.
trigger Case_Trigger on Case (before update, before insert)
{
	//Looking at our utility class to determine if we should run our trigger logic.
	if(!Util_Trigger_Name_Bypass.bypassedTriggers.contains('Case_Trigger'))
	{
		Case_Trigger_Handler.beforeUpdate(trigger.new);
		Case_Trigger_Handler.beforeInsert(trigger.new);
	}
}