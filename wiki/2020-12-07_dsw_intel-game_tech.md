---
Created:  2020-12-07T14:00:00-05
Last Updated: 2020-12-20T11:43:00-05:00
Author:
  Name:   Peter James Mangelsdorf
  Email:  peter.mangelsdorf@armywarcollege.edu
---


### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)



# Intel Game Tech



## VOIP
- What does [Source Engine](https://en.wikipedia.org/wiki/Source_(game_engine)) use?
  - it has almost no delay
  - I seriously hate delay
  - [ ] [Raise the voice chat quality #479](https://github.com/Facepunch/garrysmod-requests/issues/479)
  - [ ] [Building VOIP into an application (C++ specifically) [closed]](https://stackoverflow.com/questions/1904592/building-voip-into-an-application-c-specifically/1907340)
  - [ ] [How to Set Up an Extremely Secure Private Group Chat](https://www.freecodecamp.org/news/how-to-secure-private-group-chat/)
- [Mumble](https://en.wikipedia.org/wiki/Mumble_(software))
  - FOSS
  - [Source Code](https://github.com/mumble-voip/mumble)
  - This is a **Plug In**, not the *Built-In* `voip` for Source Engine
- voice rooms?
  - how would we implement these?
  - and how can we indicate them?
    - so people can leave/join/create with ease
  - ```
    [main] [bob,bill] [+]
    ```
    - Put this at bottom of screen?
    - can create (`[+]`) and immediately join a new room
    - others then see your name (`[bill]`) and can join that room (`[bill,jones]`)
    - appears as new buttons to the side
- secure voice chat?
  - what exists?
  - what would this look like?
  - what would *fast* somewhat-secure chat look like?
  - may make sharing harder
    - compare sharing a link with other joining options
    - may be better for the admin to say yes/no to join requests




## Keys
- Hint
  - hold to see what is clickable and what it does
  - like a pop-up keybinds menu, but better
  - highlight icons, shadow unclickables, display shortcut




## Admin Panel
- enable overriding of automatic behavior




## Instructions
- build these into the game
- see *Among Us* for an excellent example
  - builds these in as colorful, plain screens
  - learn as you play
  - would be neat if their were other, non-intrusive pop-ups
    - as ghost - complete objectives
    - as impostor - sabotage menu, etc
      - consider when to dim lights, shut doors




## Screens
- global map
  - show deployment of solutions
  - show as cards?
    - (think hearthstone?)
  - per player, modify the "abilities" bar at the bottom of their screen
    - how to show what abilities other players have?
    - how to show other players?








