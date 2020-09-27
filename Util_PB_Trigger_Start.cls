/**
 * Created by gerry on 9/26/2020.
 */

public with sharing class Util_PB_Trigger_Start
{
	@InvocableMethod(Label = 'StartTrigger' Description='Method allows up to restart triggers')
	public static void startTriggers(List<String> triggerNames)
	{
		Util_Trigger_Name_Bypass.removeBypass(triggerNames[0]);
	}
}