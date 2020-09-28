/**
 * Created by gerry on 9/26/2020.
 */

//Class that you can call from a process builder that allows you to stop a trigger from executing
public with sharing class Util_PB_Trigger_Stop
{
	//You can find this invocable apex method in your process builder when you look for the "StopTrigger" label in an apex action.
	//This method adds trigger names to the utility we made that stores trigger names we would like to bypass.
	@InvocableMethod(Label = 'StopTrigger' Description='Method allows up to bypass triggers')
	public static void stopTriggers(List<String> triggerNames)
	{
		Util_Trigger_Name_Bypass.bypassTrigger(triggerNames[0]);
	}
}