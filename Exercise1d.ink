/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 * A story with at least 6 knots
 * Vary some text via a loop
 * Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = -1 //  0 Morning, 1 Noon, 2 Night




-> seashore

== seashore ==
You are sitting on the beach. 

it is { advance_time () } and you want to have some fun.

+ [Go for a swim] -> beach3
+ [Stroll down the beach] -> beach2
-> DONE

== beach2 ==
This is further down the beach. There's nothing to do, and you found some seasshells.

It is {advance_time() }
* { time == 1 } [Pick up some seasshells] -> shells
+ [Stroll back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2

== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    
    
        
    ~ return time
    
    
    
    
== beach3==
You are swimming and having fun

-> beach4

== beach4 ==
You see a fish, catch it or go back?

+[Go back] -> seashore
+[Catch] -> Catch




== Catch ==
Congrats. you caught the fish.

It is { advance_time () }

-> seashore






