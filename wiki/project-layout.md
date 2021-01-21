---
Type: Long-Description
Created:      2020-12-19T17:30:00-05:00
Last Updated: 2020-12-19T21:17:00-05:00
Title:        Project Layout
Purpose:      Document layout of Project Files
Tags:         [Intel, Design, Game, TODO, FIXME]
Creator:
  Name:   Peter James Mangelsdorf
  Email:  peter.mangelsdorf@armywarcollege.edu
  File:   person-peter-mangelsdorf.md
Comments:
- Each of the descriptions in this file needs to be synchronized with its linked file
  (which lives with each instance in the codebase)
- TODO: Link to each `.md` from here
- TODO: Link to here from each `.md`
- TODO: Finish filling out each of these sections
- TODO: Link between each section
- TODO: Break this up into separate files, this is horribly ungainly
- TODO: Rename Abilities
- TODO: Rename Agents
- TODO: Rename Hints
- TODO: Add "intel"
- TODO: Add "intel types"
- TODO: Add each "intel type"
- TODO: Add "resources/"
- TODO: Move "Game Elements" to own note
- TODO: Add "difficulty-menu/"
- TODO: Move these "TODO" Comments to separate file

- TODO: Rename "ccmd" to "ops-director" (j3)
  Name: Operations Directorate
  Parent: JCS (Joint Chiefs of Staff)
  Wiki: https://en.wikipedia.org/wiki/Joint_Chiefs_of_Staff#Directorates_of_the_Joint_Staff
  About:
  Abilities:
    FIXME

- TODO: Add "intel-director" (j2)
  Name: Intelligence Directorate
  Parent: JCS (Joint Chiefs of Staff)
  Wiki: https://en.wikipedia.org/wiki/Joint_Chiefs_of_Staff#Directorates_of_the_Joint_Staff
  About:
  Abilities:
    FIXME

- TODO: Rename "agent-01" to "dia"
  Name: Defense Intelligence Agency
  Parent: DoD (Department of Defense)
  About:
  Abilities:
    FIXME

- TODO: Rename "agent-02" to "nro-ngo"
  Name: National Recon Office/National Geospatial-Intelligence Agency
  Parent: DoD (Department of Defense)
  About:
  Abilities:
    FIXME

- TODO: Rename "agent-03" to "fbi"
  Name: Federal Bureau of Investigations
  Parent: DOJ (Department of Justice)
  About:
  Abilities:
    FIXME

- TODO: Rename "agent-04" to "cia"
  Name: Central Intelligence Agency
  Parent: FIXME
  About:
  Abilities:
    FIXME

- TODO: Rename "agent-05" to "doe"
  Name: Department of Energy
  Parent: FIXME
  About:
  Abilities:
    FIXME

- TODO: Rename "agent-06" to "nsa"
  Name: National Security Agency
  Parent: DoD (Department of Defense)
  About: FIXME
  Abilities:
    FIXME

- TODO: Rename "agent-07" to "dos"
  Name: Department of State
  Parent: FIXME
  About: The primary mission of the State Department's Bureau of Intelligence and Research's (INR) is to harness intelligence to serve U.S. diplomacy.
  Abilities:
    giu:
      Name: Geographic Information Unit
      About: The GIU of the Office of the Geographer and Global Issues provides cartography support, GIS applications, and boundary and sovereignty analysis and research.
      Type: GEOINT/IMINT
      Cost: 3
      Cards: 1
    ospmi:
      Name: Office of Strategic, Proliferation, and Military Issues
      About: The INR/SPM focuses on a wide range of strategic, arms control, proliferation, WMD, political-military issues and conflicts.
      Type: All
      Cost: 8
      Cards: 3

- TODO: Rename "agent-08" to "dhs"
  Name: Department of Homeland Security
  Parent: FIXME
  About: The Department of Homeland Security's Office of Intelligence and Analysis is responsible for using information and intelligence from multiple sources to identify and assess current and future threats to the U.S.
  Abilities:
    cmc:
      Name: Cyber Mission Center
      About: The INR/SPM focuses on a wide range of strategic, arms control, proliferation, WMD, political-military issues and conflicts.
      Type: SIGINT
      Cost: 4
      Cards: 1
    cetc:
      Name: Current and Emerging Threats Center
      About: The GIU of the Office of the Geographer and Global Issues provides cartography support, GIS applications, and boundary and sovereignty analysis and research.
      Type: All
      Cost: 6
      Cards: 1

- TODO: Rename "agent-09" to "army"
  Name: FIXME
  Parent: FIXME
  About: U.S. Army Intelligence (G-2) is responsible for policy formulation, planning, programming, budgeting, management, staff supervision, evaluation, and oversight for intelligence activities for the Department of the Army.
  Abilities:
    mq-1:
    rc-12:
    arl:
    dcgs-a:
---




### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)




# Project Layout




## About
- How we lay out major elements of the project
- (as opposed to minor elements)
- ((each minor element is described in [element-layout.md](element-layout.md)))
- Heavy use of linking is attempted here
- Each of the describe elements below talks in the same way:
  - `Type:`
    - What Object (In-Game) these can take the form of
    - Examples: `Map-Icon`, `Menu-Icon`, `Player`
  - `Includes:`
    - What other Elements fall under this thing
    - Each of these deserves its own description
  - `FUTURE:`
    - Any considerations to consider for later
  - `NOT:`
    - Adds clarity by explicitly stating what something is not
  - `TODO`
    - Indicates more needs to be written about the subject
  - `See`
    - references another section
- Each element also has the files described in [element-layout.md](element-layout.md) included in its folder
- The description included here is also included in their Docs (`.md`) file




## Layout
```yaml
dsw-intel-games/:
  wiki/:
  intel-game/:
    ability/:
    abilities/:
      ability-01/:  # RENAME
      ability-02/:  # RENAME
      ability-03/:  # RENAME
      ability-04/:  # RENAME
      ability-05/:  # RENAME
      ability-06/:  # RENAME
      ability-07/:  # RENAME
      ability-08/:  # RENAME
      ability-09/:  # RENAME
      ability-10/:  # RENAME
    adversary/:
    game/:
    hint/:
    hints/:
      hint-01/:     # RENAME
      hint-02/:     # RENAME
      hint-03/:     # RENAME
      hint-04/:     # RENAME
      hint-05/:     # RENAME
      hint-06/:     # RENAME
      hint-07/:     # RENAME
      hint-08/:     # RENAME
      hint-09/:     # RENAME
      hint-10/:     # RENAME
    main-menu/:
    map/:
    misc/:
    nav-bar/:
    player/:
    players-overview/:
    report/:
    reports-menu/:
    role/:
    roles/:
      admin/:
      agent/:
      agents/:
        agent-01/:  # RENAME  (dia)
        agent-02/:  # RENAME  (nro-ngo)
        agent-03/:  # RENAME  (fbi)
        agent-04/:  # RENAME  (cia)
        agent-05/:  # RENAME  (doe)
        agent-06/:  # RENAME  (nsa)
        agent-07/:  # RENAME  (dos)
        agent-08/:  # RENAME  (dhs)
        agent-09/:  # RENAME  
        agent-10/:  # RENAME  
      ccmd/:
      debug/:
      dni/:
      spectator/:
    role-select/:
    session/:
    settings/:
    settings-menu/:
    technology/:
    technologies/:
      nuclear/:
      drone/:
      agi/:
      cyber/:
      nano/:
      syn-bio/:
    turn/:
```




---




## Project Elements


### DSW Intel Games
- The Whole Project


### Wiki
- Provides Generic Commentary on the Project


### Intel Game
- Contains Game-Elements
- Each Element Provides its own Resources, Documentation, Layout, and Functionality
- See [Game Elements](#game-elements) for a complete listing




---





## Game Elements


### Ability
- What an [`agent`](#agent) can play to gather [`intel`](#report)
- Includes: **Name**, **Intel-Type** (MAS, GEO, HUM, etc), **Icon**, **Description**, and **Image**
- These can be shared between different agencies, or they can be unique to a particular agency
- Uniqueness is *not* controlled by the ability, but by limiting who includes it in their definition


### Abilities
- Instances of [`Ability`](#ability) with special behaviors, assets, and descriptions
- See [Abilities Elements](#abilities-elements) for a complete listing


### Adversary
- *Not* a role that [`players`](#player) can take on
- Who `players` fight against
- Adversaries develop [`technologies`](#technology), off of which [`reports`](#report) are generated
- These are particular countries, and have a **Name**, **Map-Location**, and **Enemy-Level**
- FUTURE: Consider defining multiple "Adversary Behaviors" and creating instances of [`Adversary`](#adversary)


### Game
- The total project, as a single scene
- TODO (needs more detail)


### Hint
- Provides interactive help in the form of menus
- Records what a player has seen and when (throughout a [`turn`](#turn), [`game`](#game), and session)
- Take the form of informative **Pop-Ups**, **Notifications**, and other **Screens**
- Includes **Title**, **Text**, and **Image**


### Hints
- Each instance of a hint
- See [Hints Elements](#hints-elements) for a complete listing
- TODO


### Main Menu
- Handles [Session](#game) Creation
- Handles [User](#player) Login
- First thing a user sees on accessing the [`game`](#game)


### Map
- Where all [`players`](#player) can see everyone else's moves
- Includes **Countries**, **Pieces**, and many **Stat-Boxes**
- Places [`abilities`](#abilities) as pieces against a background with countries ([`adversaries`](#adversary))
- Shows an icon for the **Intel-Type**
- Is updated after the [`turn`](#turn) is over to show the [result](#report) of their efforts
- ("Did the action produce intel?")
- Is updated in realtime to reflect the actions other players have taken
- Stat-Boxes show the percent of deployed Intel-Types per country


### Misc
- Loose, Unsortable Elements
- Mostly engine-specific configurations, such as export settings


### Nav Bar
- A UI element shared between all [`players`](#player)
- Allows players to open and close different screens
- Player's [`roles`](#agent) modify the bar to prevent them from seeing certain screens
- Includes: **FIXME**
- TODO


### Player
- How we identify different participants
- Includes **IP**, **Password**, and **Role**


### Players Overview
- A special Stat Screen that anyone can access
- Shows (per turn) who has invested what, where, and their total capabilities
- Lets the [`Combatant Commander`](#ccmd) re-allocate resources with more ease
- Can be toggled off in the [`Admin`](#admin) panel


### Report
- Type: Pop-Up Menu, Map-Icon, and Menu-Icon
- What is generated off of technology-producing activities by adversaries
- Is a UI Element that can be read, often a paragraph of text
- Includes its own **`generate`** methods to procedurally generate info
- Has **Confidence**, **Tech-Type-Name**, **Adversary**, **Tech-Type-Image**, and **Tech-Type-Evidence**
- Can be accessed from the [`Reports Menu`](#reports-menu) or the [`Map`](#map)
- TODO


### Reports Menu
- A Stat Screen
- Where Intel Reports arrive and players can read them
- TODO


### Role
- An abstract entity, not actually implemented
- Provides an interface for other roles to use
- Inheritors include: **Admin**, **Agent**, **FIXME**
- Includes: **Icon**, **Name**, **Description**, **Abilities**
- A [`Player`](#player) is *not* a role, they instead *have* a role
- This distinction is important, as a `player` represents the *connection* to the game (from a remote `ip`)
- TODO


### Roles
- See [Roles Elements](#players-elements) for a complete listing
- TODO


### Role Select
- A Pop-Up Menu that allows players to choose their role
- TODO


### Session
- Made of [`Turns`](#turn)
- A game consists of a session
- The admin can adjust the session to be a particular turn
- The admin can save/load a particular session, including all its turns


### Settings
- How we record options for the entire [`game`](#game)
- Handles communicating with the rest of the engine
- Includes: **FIXME**
- TODO


### Settings Menu
- Pops up/down and removes player input
- Allows the [`admin`](#admin) to interact with the `settings`


### Technology
- What an adversary produces
- An individual generic "thing", is extended into something specific elsewhere
- Has a **Name**, **Description**, **Readiness Level**, and **Evidence Samples**


### Technologies
- See [Technologies Elements](#technologies-elements) for a complete listing


### Turn
- Records what happens in a turn, allows admin to record, set, and reset current time




---





## Abilities Elements
- TODO


### Ability 01
- TODO


### Ability 02
- TODO


### Ability 03
- TODO


### Ability 04
- TODO


### Ability 05
- TODO


### Ability 06
- TODO


### Ability 07
- TODO


### Ability 08
- TODO


### Ability 09
- TODO


### Ability 10
- TODO




---




## Hints Elements
- TODO


### Hint 01
- TODO


### Hint 02
- TODO


### Hint 03
- TODO


### Hint 04
- TODO


### Hint 05
- TODO


### Hint 06
- TODO


### Hint 07
- TODO


### Hint 08
- TODO


### Hint 09
- TODO


### Hint 10
- TODO




---





## Roles Elements
- TODO


### Admin
- A role, automatically assigned to whoever created the [`session`](#session)
- The Teacher's interface, allows them to control the [`game`](#game)
- Is more polished and rules-constrained than the [`debug`](#debug) interface
- Still allows for a high degree of control over in-game actions
- The role can be transferred to a different player
- Can Remove, Block players from a session, Re-Assign Roles
- Can go back/forward in turns, Re-Assign values, etc
- Is a Pop-Up menu


### Agent
- A role, must be chosen
- An *Intel-Officer* (Student)'s Interface
- Has a **Budget**, **Abilities**, and **Actions-Tracker**
- Is a Pop-Up menu


### Agents
- Each instance of an agent
- Assigns **Icon**, **Name**, **Description**, and **Abilities**
- See [Agents Elements](#agents-elements) for a complete listing
- TODO


### CCMD
- A role, must be chosen
- A *Combatant Commander* (Student)'s Interface
- Has a **Requests-Allocator** and **Resources-Allocator**
- Is a Pop-Up menu


### Debug
- A role, is only available in *testing* versions of the game
- The "Full" Interface to the [`game`](#game)
- Enables control over *every* aspect of the game
- Not Polished, Not intended for general use
- Includes every conceivable button


### DNI
- A *Director of National Intelligence* (Student)'s Interface
- Consists of **Budget**, **Interview-Question**, and **Additional-Resources-Allocator**
- (FUTURE: Consider how we might talk about allocating resources better using alternative interfaces)


### Spectator
- A special role, selected by default
- Has access to the [`Role-Select`](#role-select) menu
- Otherwise has no effect on the game




---






## Agents Elements
- TODO


### Agent 01
- TODO


### Agent 02
- TODO


### Agent 03
- TODO


### Agent 04
- TODO


### Agent 05
- TODO


### Agent 06
- TODO


### Agent 07
- TODO


### Agent 08
- TODO


### Agent 09
- TODO


### Agent 10
- TODO




---





## Technologies Elements
- Type: [`technology`](#technology)
- Each of these has some accompanying flavor text and predictions taken from recent Army Intelligence reports
- Functionally, they are just counters (as of `2020-12-19`) that [`adversaries`](#adversary) must invest in and [`players`](#player) must spend enough 
- FUTURE: Consider adding some in-game mechanics that affect the player's ability to operate because of adversary capabilities


### Nuclear
- The textbook weapon of M.A.D., but most popular for low-tech countries to develop


### Drone
- (Robot Warfare)
- Includes **Everyday Robotics** (such as cars), **Modern Drones** (such as the *Predator*), **Swarm Drones** (emerging with the IoT space)


### AGI
- (Artificial General Intelligence)
- Solves the fundamental problems of computer science
- A *Complete* AGI is unlikely to be procured within less than 20 years
- *Individual Properties* of AGI are very likely to be observed, including **Super Networking**, **Super Prediction**, and others


### Cyber
- Includes **Networks**, **Internet-of-Things**, 
- The majority of domestic attacks against the United States by foreign powers in the last year have been cyber-espionage against Infrastructure, otherwise known as the "Internet-of-Industrial-Things"


### Nano
- (Nanotech, Nano-Material)
- Used in the fabrication of construction materials, optics
- Think of this like "Chemistry 2.0", with new materials capable of being used in CBRN weapons, armor coatings, and other uses
- This also includes advances in the Manufacturing space, as nano-fabrication is very limited as of now


### Syn-Bio
- (Synthetic Biology)
- Occupies a similar space to [Nanotech](#nano), but focuses on *proteins* and *acids* in particular







