/**
 * Created by gerry on 9/26/2020.
 */

//Class that you can call from a process builder that allows you to start a trigger again
public with sharing class Util_PB_Trigger_Start
{
	//You can find this invocable apex method in your process builder when you look for the "StartTrigger" label in an apex action.
	//This method removes trigger names from the utility we made that stores trigger names we would like to bypass.
	@InvocableMethod(Label = 'StartTrigger' Description='Method allows up to restart triggers')
	public static void startTriggers(List<String> triggerNames)
	{
		Util_Trigger_Name_Bypass.removeBypass(triggerNames[0]);
	}
}