---
Last Updated: 2020-12-19T15:11:00-05:00
Created: FIXME
Creator:
  File: person-peter-mangelsdorf.md
---


### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)


# Acceptable Markup




## Overview

### Examples
- ### Title Text
- Plain Text
- [Section Link](#overview)
- [File Link](acceptable-markup.md)
- [Detailed Link](#overview "Here is a Tooltip")
- *Italic Text*
- **Bold Text**
- `Code Text`
- > Commented Text

### Quines
- ### \#\#\# Title Text
- Plain Text
- [\[Section Link\]\(\#overview\)](#overview)
- [\[File Link\]\(acceptable-markup.md\)](acceptable-markup.md)
- [\[Detailed Link\]\(\#overview "Here is a Tooltip"\)](#overview "Here is a Tooltip")
- *\*Italic Text\**
- **\*\*Bold Text\*\***
- `` `Code Text` ``
- > \> Commented Text

### Literals
```md
- ### Title Text
- Plain Text
- [Section Link](#overview)
- [File Link](acceptable-markup.md)
- [Detailed Link](#overview "Here is a Tooltip")
- *Italic Text*
- **Bold Text**
- `Code Text`
- > Commented Text
```




## Structures




### Examples
Plain Paragraph

Wrapped
Paragraph

Separate

Paragraphs

- Bulleted Paragraph

- Outlined
  - Paragraph

#### Sectioned
Paragraph




### Quines
Plain Paragraph

Wrapped
Paragraph

Separate

Paragraphs

- Bulleted Paragraph

- Outlined
  - Paragraph

#### \#\#\#\# Sectioned
Paragraph




### Literals
```md
Plain Paragraph

Wrapped
Paragraph

Separate

Paragraphs

- Bulleted Paragraph

- Outlined
  - Paragraph

#### Sectioned
Paragraph
```



## Code Blocks

### About
- Special Notation to ignore transformation and apply highlighting
- Useful when stepping through and explaining code
- Can apply to markdown itself, but some edge-cases exist

### Example
```py
def a_func(an_arg: str = "") -> bool:
    if an_arg:
        return True
    return False
```

### Quine
    ```py
    def a_func(an_arg: str = "") -> bool:
        if an_arg:
            return True
        return False
    ```





