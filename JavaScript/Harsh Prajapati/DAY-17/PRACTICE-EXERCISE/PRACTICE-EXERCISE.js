// Use Window.location object to navigate on another page
function newDoc()
{
    window.location.assign("https://www.w3schools.com")
}

// Use Window.history object to move to previous url in the history list
function goForward()
{
    window.history.forward()
}

// Try to change windows height and width using Windows object
function resizeWin()
{
    myWindow.resizeTo(250, 250);
    myWindow.focus();
}

// Try to change windows height and width using Windows object
function openWindow()
{
    myWindow = window.open("", "", "width=500, height=800");
}