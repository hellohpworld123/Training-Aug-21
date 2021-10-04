// Date entered by the user should be checked for whether it is a Valid Date or not.

// Entered date should be in “”MM-DD-YYYY”” format. Display the Date Format along with the Text Box.

// You are required to perform following checks :

// – Entered characters should be digits only.

// – Month should be within the range 1 to 12.

//  Days should be within the range 1 to 31.

// Check the entered Days and its corresponding Month.

// Note: use split function of the string

function setfulldate(dateString)
{
    let dateformat = /^(0?[1-9]|1[012])[\/\-](0?[1-9]|[12][0-9]|3[01])[\/\-]\d{4}$/;
    
    if (dateString.match(dateformat))
    {
        let operator = dateString.split('/');

        let datepart = [];
        if (operator.lenght>1)
        {
            datepart = dateString.split('/');
        }
        let month = parseInt(datepart[0]);
        let day =parseInt(datepart[1]);
        let year = parseInt(datepart[2]);

        let ListOfDays = [31,28,31,30,31,30,31,31,30,31,30,31];
        if (month==1 || month>2)
        {
            if (day>ListOfDays[month-1])
            {
                return false;
            }
        }
        else if (month==2)
        {
            let leapyear =false;
            if ((!(year % 4) && year % 100) || !(year % 400))
            {
                leapyear = true;
            }
            if ((leapyear == false) && (day>=29))
            {
                return false;
            }
            else if ((leapyear==true) && (day>29))
            {
                console.log('Invalid date format!');
                return false;
            }
        }
    }
    else
    {
        console.log("Invalid date format !!!");
        return false;
    }
    return true;
}

var a = setfulldate("06/16/2019");    
console.log(a);


// function setfulldate()
// {
//     let x = document.forms["date"].value;
//     if (x == "")
//     {
//         alert("Date must be filled out");
//         return false;
//     }
// }