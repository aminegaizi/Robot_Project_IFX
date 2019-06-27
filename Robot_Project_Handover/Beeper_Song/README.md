README Beeper_song project

##What does this project do ? 

This project plays the Happy Birthday song (with the piezo beeper of the Application Kit) while displaying "Happy Birthday Alex!" on the Tft screen - function void happy_birthday(void);
It also plays the star wars theme while displaying "May the force be with you" on the Tft screen - function void star_wars(void);


##How to make it work ?

In the main you can either comment or uncomment the song you (don't) want to hear. Build the project again and flash it on the AURIX™.
By default only the star wars theme is being played. 

If you want to change what is being displayed on the Tft screen, go to the functions ***void Tft_HBD_Alex(void);*** or ***void Tft_Star_wars(void);***, and change the text in the functions 
**GLCD_displayStringLn**. Bear in mind that each line of the Tft screen can display 20 characters. If you want to have your text centered, you might need to pad your string with spaces. 

##Note: 

This is a project that I did very quickly, I did not try to have the most accurate frequencies for notes, or have the most efficient code.
I followed the values for delays and frequency in the following projects:

Star Wars: https://gist.github.com/nicksort/4736535
Happy Birthday: https://gist.github.com/krin-san/ef6b8b1e501ad4a82902

Sometimes the frequencies or the delays documented in the above websites were wrong, I had to correct them. It is normal if a couple of values are different.
If you detect any errors, feel free to correct it :). 

Regarding the delay, I use **waitTime** from the _Bsp.c_ file. It waits for a certain amount of ticks. In order to create my delys, I was passing to this function: frequency/factor. 
Frequency is the amount of ticks for a 1 second delay. Therefore, to have a 500ms delay, I would pass to the function _frequency/2_.

##Important !

When you finish playing these songs, think about flashing another project on the AURIX™. Otherwise next time you will plug in the App Kit, it will play the song directly. It can be embarrassing when in the lab. 


_Written by Amine Gaizi on June 24th_
