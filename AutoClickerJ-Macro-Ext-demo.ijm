// This is a macro to demonstrate the use of some functions available with AutoClickerJ plugin, using Macro Extensions.
// It means that you can call functions with this code pattern: " Ext.<function-name>(<parameter1>, <parameter2>, ...); "
// You can compare this macro to the one made with the GUI and see how lighter the code is here...
// Note: all can be achieved with proper macro code, so the goal here is only for you to see some code and how it works for real...
// Author: Patrice Mascalchi

// -- Allow the use of macro extensions --------------------------------
run("AutoClickerJ Macro Extensions");

// -- Create a new empty Image ------------------------------------
newImage("AutoClickerJ-demo", "8-bit black", 400, 400, 1);
setLocation(50, 50);

// -- Create a circle shape using SHIFT key to preserve 1:1 ratio for width and height ------------------------------------
setTool("oval");
Ext.PressSHIFT(100);
Ext.PressLeftClick(156, 185, 100);

Ext.ReleaseLeftClick(366, 405, 100);
Ext.ReleaseSHIFT(100);

setForegroundColor(255, 255, 255);
run("Fill", "slice");
run("Select None");


// -- Write text ----------------------------------
setForegroundColor(0, 0, 0);
setTool("text");

Ext.ClickAndKeyWrite(152, 274, 100, "AutoClickerJ demo...");
run("Draw", "slice");

Ext.LeftClick(160, 320, 100); // to reinitialize the text tool
Ext.ClickAndKeyWrite(155, 320, 100, "... using Macro Extensions");
run("Draw", "slice");

// -- Write text with "ClickAndKeyCopy" will paste it to the clipboard if Text tool is selected ----------------------------------
setTool("rectangle");
Ext.ClickAndKeyCopy(180, 360, 100, " ClickAndKeyCopy cannot be used with Text tool!!");
