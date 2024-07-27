Hetsu and Link found this funny looking typewriter with a lighted display, wires sticking out the back and some gears exposed on the top. Every time they pressed a letter on the keyboard, a letter would light up on the display (they called this the lightboard). Sometimes the letter would be the same, sometimes it would be different. They noticed that the wires on the back of the typewriter had something to do with it... 
- There were 26 different holes in the back that a wire could be plugged into and each one had a different letter of the alphabet written on it
- There were also 10 different wires with plugs on each end that fit perfectly into any of the lettered holes. Because of this, they aptly named this section the "plugboard"
- Any time they pressed a letter on the keyboard that had a wire in the corresponding letter hole on the plugboard, the lightboard would illuminate the letter on the other end of the wire

![plugboard-image](/images/plugboard-image.png)

For example, if there was a wire connecting the letters A and L, when they would type A on the keyboard, L would light up on the lightboard. Vice versa when they typed L on the keyboard A would show up on the lightboard. If there was no wire connected to the letter pressed on the keyboard, then the lightboard would illuminate the same letter that they pressed. Since there was no hole in the plugboard that corresponded to spaces, any time they pressed the spacebar, it always illuminated the space key. They scetched a simple diagram to illustrate the logic flow of the plugboard operation.

![plugboard-flow](/images/plugboard-flow.png)

They thought that this would be a great way for the two to secretly communicate with each other. As long as they each had a machine with the same plugboard configuration, they could easily encrypt and decrypt messages to each other. The problem is that there is only 1 machine! 
Help Hetsu and Link achieve their goal of encrypted communication by building a function that can perform the same encryption/decryption as the original machine!

Your function should accept 2 arguments:
- config [ list of strings ] - configuration list for the plugboard 
        e.g. ["AL","PR","EV"] : A<->L ; P<->R ; E<->V
- message [ string ] - message to encrypt/decrypt

examples: </br>
function( ['AL', 'PR', 'EV'] , "APPLE" )    ----> "LRRAV" </br>
function( ['PW'] , "LINK" )    ----> "LINK" </br>
function( ['PO', 'RT', 'FB', 'EY', 'IW', 'SA', 'UK', 'CN'], "YCNTEORWPC WA BKC" )    ----> "ENCRYPTION IS FUN" </br>

additional disclosures: 
- There is only enough space for 1 plug to fit into each letter hole on the plugboard, so you don't need to worry about a letter being mapped to two different letters
- There are only 10 wires, so the maximum number of letter mappings is 10, and the minimum number of letter mappings is 1
- There are only uppercase letters on the machine and the plugboard
