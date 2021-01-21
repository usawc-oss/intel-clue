---
Created: FIXME # 2020-12-19T15:27:00-05:00 ?
Last Updated: 2020-12-20T11:43:00-05:00
Creator:
  File: person-peter-mangelsdorf.md
---


### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)


# Element Layout




## About
- These are the files you can typically expect to find under a particular "Element" folder
- Some Elements are just containers for more elements, and will only include a Docs (`.md`) file as a result (No Script (`.gd`) or Scene (`.tscn`) File)




## Example
```yaml
project/:
    # Contains all the Elements of a Game
    
    rocket-ship/:
        # A Particular Element
      
        rocket-ship.tscn:
            # The "Scene" File
        
        rocket-ship.gd:
            # The "Script" File
        
        rocket-ship.md:
            # The "Docs" File
        
        elements/:
            # The "Child Elements" File
            # Provides Binary/Sub Assets specific to this Element
            
            exhaust-1.png:
                # An Example Resource
            exhaust-2.png:
                # An Example Resource
            exhaust-3.png:
                # An Example Resource
            exhaust-4.png:
                # An Example Resource
            exhaust.ogg:
                # An Example Resource
```




## File Types

### `/`
- A **Folder**
- Is the POSIX File Separator
- Windows uses `\`, but for compliance-sake, we will use the `/` character
- Provides a *view* of the files relative to a particular *perspective*
- Enables project organization

### `.tscn`
- A **Scene**
- Short for **T**ext **S**cene
- (As opposed to `.bscn` (**B**inary **S**cene))
- Provides *structuring* for an element out of *other elements*
- Enables element reuse

### `.gd`
- A **Script**
- Short for **G**o**D**ot
- Provides *functionality* for an element out of *math*
- Enables element behavior

### `.md`
- A **Document**
- Short for **M**ark**D**own
- Provides *context* for an element with *English*
- Enables user understanding










