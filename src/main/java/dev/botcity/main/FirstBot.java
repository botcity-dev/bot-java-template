package dev.botcity.main;

import dev.botcity.BotChromeSDK.JavascriptCodes;
import dev.botcity.framework.bot.DesktopBot;
import dev.botcity.maestro_sdk.BotExecutor;
import dev.botcity.maestro_sdk.BotMaestroSDK;
import dev.botcity.maestro_sdk.runner.BotExecution;
import dev.botcity.maestro_sdk.runner.RunnableAgent;

public class FirstBot extends DesktopBot implements RunnableAgent
{
	public FirstBot() {
		try {
			setResourceClassLoader(this.getClass().getClassLoader());
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void action(BotExecution botExecution) {

		try {
			// To open a web page
			// browse("https://www.linkedin.com/in/lorhan/");
			
			// To exec an application (Windows)
			// exec("calc.exe");
 
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	private void notFound(String label) {
		System.out.println("Element not found: "+label);
	}

	public static void main(String[] args) {
		BotExecutor.run(new FirstBot(), args);
	}
}
	