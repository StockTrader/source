using System;

    /// <summary>
    /// This class trims input characters from a string, based on specified length.  Helps to prevent
    /// buffer overrun attacks.  Could be augmented with strip-out of script-injection attack characters, 
    /// although ASP.NET automatically does this for common special characters.
    /// </summary>
    public static class Input
    {
        /// <summary>
        /// This method trims input characters from a string, based on specified length.</summary>
        /// <param name="inputString">String to clean.</param> 
        /// <param name="maxLength">Cut off length to return.</param> 
        public static string InputText(string inputString, int maxLength)
        {
            // check incoming parameters for null or blank string
            if ((inputString != null) && (inputString != String.Empty))
            {
                inputString = inputString.Trim();

                //chop the string incase the client-side max length
                //fields are bypassed to prevent buffer over-runs
                if (inputString.Length > maxLength)
                    inputString = inputString.Substring(0, maxLength);
            }
            return inputString;
        }
    }
