// This is a macro to demonstrate the use of some functions available with AutoClickerJ plugin.
// All can be achieved with proper macro code, so the goal here is only for you to see some code and how it works for real...
// Author: Patrice Mascalchi

// -- Create a new empty Image ------------------------------------
newImage("AutoClickerJ-demo", "8-bit black", 400, 400, 1);
setLocation(50, 50);

// -- Create a circle shape using SHIFT key to preserve 1:1 ratio for width and height ------------------------------------
setTool("oval");
run("AutoClickerJ GUI 1.0.6", "order=PressSHIFT x_point=0 y_point=0 delay=100 clickandkeywrite=[]");
run("AutoClickerJ GUI 1.0.6", "order=PressLeftClick x_point=156 y_point=185 delay=100 clickandkeywrite=[]");

run("AutoClickerJ GUI 1.0.6", "order=ReleaseLeftClick x_point=366 y_point=405 delay=100 clickandkeywrite=[]");
run("AutoClickerJ GUI 1.0.6", "order=ReleaseSHIFT x_point=0 y_point=0 delay=100 clickandkeywrite=[]");

setForegroundColor(255, 255, 255);
run("Fill", "slice");
run("Select None");


// -- Write text ----------------------------------
setForegroundColor(0, 0, 0);
setTool("text");

run("AutoClickerJ GUI 1.0.6", "order=ClickAndKeyWrite x_point=113 y_point=274 delay=100 clickandkeywrite=[AutoClickerJ demo made from its GUI]");
run("Draw", "slice");

run("AutoClickerJ GUI 1.0.6", "order=LeftClick x_point=160 y_point=320 delay=100 clickandkeywrite=[]"); // to reinitialize the text tool
run("AutoClickerJ GUI 1.0.6", "order=ClickAndKeyWrite x_point=155 y_point=320 delay=100 clickandkeywrite=[...and the macro recorder...]");
run("Draw", "slice");

// -- Write text with "ClickAndKeyCopy" will paste it to the clipboard if Text tool is selected ----------------------------------
setTool("rectangle");
run("AutoClickerJ GUI 1.0.6", "order=ClickAndKeyCopy x_point=180 y_point=360 delay=100 clickandkeywrite=[ ClickAndKeyCopy cannot be used with Text tool!!]");
