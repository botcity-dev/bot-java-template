package dev.botcity.main;

import dev.botcity.BotChromeSDK.JavascriptCodes;
import dev.botcity.framework.bot.DesktopBot;

public class FirstBot extends DesktopBot
{
	
	public FirstBot() {
		try {
			setResourceClassLoader(this.getClass().getClassLoader());
			load();
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void action() {
		
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
	
	private void load() {
		try {
			//addImage("", "./src/resources/");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public static void main(String[] args) {
		new FirstBot().action();
	}
	
}
	