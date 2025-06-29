
**Devlog #1 5/26/2025**
> *Flureo*
>
> I just finished making a very basic Readme.md file for the project. I'm about to start working on the new movement system this time I'm going to use predicates instead of scoreboards which should make it much faster then it was. After I learned that you can detect player input with predicates I've been meaning to do this. And this time I'm going to try to implement some sort of crawling system instead of just scaling the player down. I also just created this DevLogs.md file so the developers can rant about random stuff until they feel better about themselfs. I hate datapacks...

---

**Devlog #2 5/29/2025**
> *Flureo*
>
> Yesterday I commited an update to the movement system. It now uses predicates instead of the scoreboard system that I came up with before. I'm also planning to use advancements to trigger a function instead of the check_movement function that I have right now. I have removed the main namespace and moved the load function to the minecraft namespace. I have also added a `log` tag so we can log information if needed to help development of the datapack. Today I've renamed the DP-Grace dirctory to just Datapack because we plan to just have a .zip file you can just download. And we can just rename the .zip file.

---

**Devlog #3 5/31/2025**
> *Flureo*
>
> Today I been looking at the movement_speed attribute and I have found the perfect speed for sprinting, walking, and crouching to bring the player one block in one second. By the way the are all rounded to the nearest ten-thousandth. And crawling is the same as sneaking.
>
> **Sprinting: 1m/s**, *VALUE:* ***0.0178***
>
> **Command:** `/attribute @s movement_speed base set 0.0178`
>
> **Walking: 1m/s**, *VALUE:* ***0.0227***
>
> **Command:** `/attribute @s movement_speed base set 0.0227`
>
> **Sprint Sneaking: 1m/s**, *VALUE:* ***0.0625***
>
> **Command:** `/attribute @s movement_speed base set 0.0625`
>
> **Sneaking: 1m/s**, *VALUE:* ***0.0833***
>
> **Command:** `/attribute @s movement_speed base set 0.0833`

---

**Devlog #4 6/2/2025**
> *Flureo*
>
> Got done making a `per-player` database so we can store and grab custom player data. There is a readme file that explains how to use it in detail. That is basically it though. And I aslo never want to mess with this again. See you later!

---

**Devlog #5 6/5/2025**
> *Flureo*
>
> Yesterday I create the math namespace to store functions like sqrt() because Minecraft by default doesn't have one?! Its VERY annoying. But it can be done with the function that I've created. It uses the Babylonian method for anyone that cares... :sob:

---

**Devlog #6 6/25/2025**
> *Flureo*
>
> The movement system is finally in beta! Now I feel like I actually did something :sob: Also sorry for slow development.

---

**Devlog #7 6/27/2025**
> *Flureo*
>
> Fixed the movement system to were you can slide down stairs making you faster in the process. I also add a simple resource pack and a couple of soundtracks. Lava Chicken is fire by the way. I'll also be making another commit soon because right now I feel on fire! I don't really know what else to say here so see you later I guess.

---

**Devlog #8 6/28/2025**
> *Flureo*
>
> Just got done with a dozer prototype. I didn't really know how to make the animation work :happy: I also updated some names and I fixed some movement system stuff but nothing really important. Also I just found out some hard limitations with datapacks but I will explain that later right now I want to go to bed. Good night love yall.

---