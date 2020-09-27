/**
 * Created by gerry on 9/26/2020.
 */

public with sharing class Util_PB_Trigger_Stop
{
	@InvocableMethod(Label = 'StopTrigger' Description='Method allows up to bypass triggers')
	public static void stopTriggers(List<String> triggerNames)
	{
		Util_Trigger_Name_Bypass.bypassTrigger(triggerNames[0]);
	}
}