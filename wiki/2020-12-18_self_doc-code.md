---
Created: 2020-12-18T10:31:00-05:00
Last Updated: 2020-12-20T11:43:00-05:00
Creator:
  File: person-peter-mangelsdorf.md
---


### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)


# Documenting Code




## Topics
- **[Topics](#topics)**
  - Shows what is included in this file
- **Why am I Spending Time on This?**
  - [Motivation](#motivation)
    - Briefly, why this file exists
- **General Search of What Exists**
  - [Search Terms](#search-terms)
    - What I am looking for
  - [Refs](#refs)
    - What I have found
  - [Aspects](#aspects)
    - what is important to document?
- **Documenting Code Separately**
  - [Structures](#structures)
    - what ancillary files to a particular file aid in its understanding?
  - [Writing `.doc` Files](#writing-doc-files)
    - Questions regarding what a "doc" file should be
  - [Doc Class 1](#doc-class-1)
    - Using Extension to build Documentation
  - [Doc Class 2](#doc-class-2)
    - Using Instantiation to build Documentation
- **Various Common Ways in Game Engines**
  - [General Techniques](#general-techniques)
    - List and Description of common techniques
  - [Unity Attributes](#unity-attributes)
    - One way Unity documents code
  - [Inspector Headings](#inspector-headings)
    - this is a method popular with Unity
  - [Example Projects](#example-projects)
    - list of projects with good documentation
- **Godot Techniques**
  - [Documentation Generation](#godot-tooltips)
    - Part of [Godot Tooltips](#godot-tooltips)
  - [Godot Tooltips](#godot-tooltips)
    - how to provide tooltips from within godot (notes)
    - *Also Covers Documentation Generation*
  - [Godot Tooltips Refs](#godot-tooltips-refs)
    - how to provide tooltips from within godot (readings)
    - *Also Covers Documentation Generation*
  - [Godot Inspector Headings Refs](#godot-inspector-headings-refs)
    - How godot provides inspector headings (Readings)
  - [Godot Inspector Headings](#godot-inspector-headings)
    - How godot provides inspector headings (Notes)
  - [Music Player Problems](#music-player-problems)
    - challenges I have faced with Godot
  - [Godot Advanced Exports](#godot-advanced-exports)
    - pulled from godot-docs, shows how to use reflection to edit the inspector
    - *not* beginner friendly
  - [Misc Godot Refs](#misc-godot-refs)
    - other interesting techniques
- **Noteworthy Techniques**
  - [Godot Labels](#godot-labels)
    - How godot maintainers talk about things
  - [Label Properties](#label-properties)
    - what things we should expect from a labelling system
- **Doc Tokens**
  - [Example Doc Tokens](#example-doc-tokens)
    - What we might use in comments
  - [Ad-Hoc Tokens](#ad-hoc-tokens)
    - How we might write those comments
  - [Tokens Aren't Enough](#tokens-arent-enough)
    - Use Reflection instead
  - [Excluded Tokens](#excluded-tokens)
    - What we can cover instead
- **[Terms](#terms)**
  - Any words that might need explaining





## Search Terms
- how to document code
- how to document software
- unity documenting code
- godot documenting code
- godot make own doc files





## Refs
- [Five strategies for documenting code](https://idratherbewriting.com/learnapidoc/docapis_code_strategies.html)
  0. No-Docs (Most Common)
  1. Typical Documentation (Explains *Why*)
  2. Literate Scripts (Explains each Block)
  3. Step-By-Step (Walkthrough Code Execution)
  4. Broad Strokes/Experimentalist Refinement (Start Vague and show how to arrive at solution)
  5. Live Exploration (Jupyter Notebooks, Let the users play with the system)
  - This is more story-telling than anything else
- [Godot Docs Writing custom documentation](https://docs.godotengine.org/en/stable/development/cpp/custom_modules_in_cpp.html#writing-custom-documentation)
  - note, this is for **Modules**, a special way of modifying the engine
  - Technically everything could be viewed as a "Module", but this is apparently "special"
- [How to Write Godot's Code Reference (contributor tutorial)](https://www.youtube.com/watch?v=5jeHXxeX-JY)
  - (Video)
  - Shows steps to write engine-style comments, but for modules
- [Godot Docs Project workflow (Getting Started)](https://docs.godotengine.org/en/stable/getting_started/workflow/index.html)
  - good place for new contributors to the project
- [Godot Docs Docs writing guidelines](https://docs.godotengine.org/en/stable/community/contributing/docs_writing_guidelines.html)
  - useful for beginners






## Motivation
- Need a consistent and sustainable way for non-technical people to contribute to and understand this project
- Documentation is a curse, for it is both necessary and boring, useful but initially useless
- Docs are hard, as they must be written about something that exists first
- [fixme]





## General Techniques
- **Issues**
  - Project-Oriented, part of most Version-Control suites (such as GitHub, GitLab, Perforce, etc)
  - These are a "structured forum" of sorts, and accompany the code in the repo
  - Noteworthy is the numbering scheme and ability to talk about code
  - Makes use of `Labels` to organize issues and search for problems
- **Code-Comments**
  - Docs embedded right in the code
  - Most focus on technical aspects, less so how-to's, explanations, and other stuff
- **Doc-Pages**
  - These are Wikis, often written in Sphinx and extracted from Source-Code Comments
  - Hyperlinked, and served from a website
  - Godot is unique, it embeds these pages within the editor itself
- **Examples**
  - Often included with code, show how to use it
- **Tests**
  - more common in non-game projects
  - Shows that code conforms with expectations
  - more common in logic-heavy games, such as chess or checkers
- **Tutorials**
  - often provided separately, teach people how to use a thing
  - YouTube is the most popular format for these, though written formats do exist
- **Debug/Help**
  - StackOverflow is the most popular resource for this
  - Take the form of Q/A format, often aided by search engines (such as Google)
- **Game Design Document**
  - A formal design-oriented document, covers any and all aspects of a game
  - Design, Development, Production, Timelines, Art, Writing, etc
- **Intro Document**
  - Helps bring new people onto a team, and coordinate outside collaborators





## Godot Labels
- [Godot Engine's Labels](https://github.com/godotengine/godot/labels)
- [Godot Docs' Labels](https://github.com/godotengine/godot-docs/labels)
- [Godot Proposals' Labels](https://github.com/godotengine/godot-proposals/labels)





## Unity Attributes
- These append variable/script information in-line and inform the inspector how to behave
- [Unity HeaderAttribute](https://docs.unity3d.com/ScriptReference/HeaderAttribute.html)
- [Unity TooltipAttribute](https://docs.unity3d.com/ScriptReference/TooltipAttribute.html)
- [Unity TextAreaAttribute](https://docs.unity3d.com/ScriptReference/TextAreaAttribute.html)
- [Unity RequireComponent](https://docs.unity3d.com/ScriptReference/RequireComponent.html)
- can be combined like so:
```cs
[Header("Health Settings"), Slider, Tooltip("Health value between 0 and 100.")]
```




## Inspector Headings
- Are an Anti-Pattern
- Sure, they look nice, but introduce questions
- Why do we have so many variables that we need to group them?
  - Consider moving those variables to a child object instead
- Why do we need to separate the variables further?
  - Are their names not descriptive enough?





## Aspects
- Basic Background Info (*Author, Date, License*)
- Why does this Exist? (*Purpose*)
- How do we use It? (*Example*)
- Does it Work? (*Test*)
- Are we still using it? (*Status/Backlinks/References*)




## Structures
```yaml
files:
  topic.gd: |
    "This file is the actual functionality of a thing"
    
    "Here is a Doc String"
    func my_func(an_arg: str = ""):
        ...
  topic.doc.gd: |
    "
    This file explains what the `topic.gd` or `topic.tscn` file does/is

    Note that this entire file is one massive comment
    "
  topic.test.gd: |
    "This file is just a bunch of tests of the target script"
    "Can be used for either runtime (integration-testing) or static (unit-testing) testing"

    "Here is the first test"
    func my_test(another_arg: int = 1):
        ...
  topic.tscn: |
    [Node Type="Node" Desc="This is the *Data* of a thing (scene)"]
  topic.test.tscn: |
    [Node Type="Node" Desc="This is a scene to test the thing in at runtime"]
  topic.example.tscn: |
    [Node Type="Node" Desc="This shows how to properly use the topic"]
```




## Writing `.doc` Files
- We could just use one massive string
- Or we could break that string up and assign it to variables
- Take it further: Define a "doc" class and inherit from it, overriding its variables
- If we use a class, why not *instantiate* it as a scene, as opposed to *extending* it as a script?
- The *scene* interface is likely easier to understand, and supports any text (including quotes)
- Though it may be harder to treat as a plain-text file (and thus immediately accessible from the script-editor)
- we can include tooltips, section blocks if made into scene
- Or....
- Why not create docs the same way godot does?
- How can we provide these?
- Are they worth the time investment?
- Has anyone else tried this?




## Doc Class 1
```yaml
doc.gd: |
  class doc

  # Something Unique
  var title = "FIXME(title missing)"

  # Who wrote this?
  var author = "FIXME(author missing)"

  # When was it written?
  var date = "FIXME(date missing)"

  # What is the license?
  var license = "FIXME(license missing)"

  # Briefly what differentiates this class from any other class
  var brief = "FIXME(brief missing)"

  # How do we use this? Use Examples
  var usage = "FIXME(usage missing)"

  # Noteworthy Variables
  var variables = "FIXME(variables missing)"

  # Noteworthy Methods
  var methods = "FIXME(methods missing)"
```
```yaml
example.doc.gd: |
  extends doc

  var title = "Example"

  var author = "
    Peter James Mangelsdorf
    peter.mangelsdorf@armywarcollege.edu
    peter.mangelsdorf@outlook.com
    peter201943@gmail.com
  "
  
  var date = "2020-12-18"
  
  var license = "2020 MIT Army War College"
  
  var brief = "An example script with docs, tests, examples, and more"
  
  var usage = "
    # Load the Scene
    var example_scene = example.new()
    # Execute
    example_scene.fire("alpha")
  "
  
  var variables = "
    ## location: str
    Where we fire from
  "
  
  var methods = "
    ## fire(location: str)
    How we fire
  "
```




## Doc Class 2
```yaml
doc.gd: |
  class doc

  # Something Unique
  export(String) var title = "FIXME(title missing)"

  # Who wrote this?
  export(String) var author = "FIXME(author missing)"

  # When was it written?
  export(String) var date = "FIXME(date missing)"

  # What is the license?
  export(String) var license = "FIXME(license missing)"

  # Briefly what differentiates this class from any other class
  export(String) var brief = "FIXME(brief missing)"

  # How do we use this? Use Examples
  export(String) var usage = "FIXME(usage missing)"

  # Noteworthy Variables
  export(String) var variables = "FIXME(variables missing)"

  # Noteworthy Methods
  export(String) var methods = "FIXME(methods missing)"
```
```yaml
example.doc.tscn: |
  [Type="Node" name="example.doc.tscn" script="doc.gd"]
  title="Example"
  author="
    Peter James Mangelsdorf
    peter.mangelsdorf@armywarcollege.edu
    peter.mangelsdorf@outlook.com
    peter201943@gmail.com
  "
  date="2020-12-18"
  license="2020 MIT Army War College"
  brief="An example script with docs, tests, examples, and more"
  usage="
    # Load the Scene
    var example_scene = example.new()
    # Execute
    example_scene.fire("alpha")
  "
  variables="
    ## location: str
    Where we fire from
  "
  methods="
    ## fire(location: str)
    How we fire
  "
```




## Godot Tooltips Refs
- [Tooltip for exported variables #6204](https://github.com/godotengine/godot/issues/6204)
  - closed, but where was it moved to?
- [Tooltips for exported variables #35716](https://github.com/godotengine/godot/pull/35716)
  - pending since *August*. ugh
- [Documentation generation for GDScript #993](https://github.com/godotengine/godot-proposals/issues/993)
  - closed recently (as of `2020-12-18`)
  - This is really neat, build up Sphinx Hyperlinked PAges, accessible from Docs like regular Godot page
- [GDScript(2.0) Documentation generation system #41095](https://github.com/godotengine/godot/pull/41095)
  - ***APPROVED!!!!***
  - (but this is only for inspector-tooltips)
- [[WIP] GDScript documentation system #39359](https://github.com/godotengine/godot/pull/39359)
  - This is really neat, build up Sphinx Hyperlinked PAges, accessible from Docs like regular Godot page
  - supposedly superseded by `#41095`
- [Added annotations to GDScript #9469](https://github.com/godotengine/godot/pull/9469)
  - was ignored, see others
- [Annotations in GDScript #20318](https://github.com/godotengine/godot/issues/20318)
  - closed, see `828`
- [Documentation generation for GDScript #993](https://github.com/godotengine/godot-proposals/issues/993)
  - thoughts on writing styles
- [Annotations in GDScript #828](https://github.com/godotengine/godot-proposals/issues/828)
  - even more comments
  - not read yet






## Godot Tooltips
```py
# really `.gd`, but for syntax-highlighting's sake
@description "Adds two numbers and returns the result."
@parameter name=num1 type=float description="The first number"
@parameter name=num2 type=float description="The second number"
@returns type=float description="num1 and num2 added together"
func add(num1, num2):
	return num1 + num2
```
- [chillen makes an excellent comment](https://github.com/godotengine/godot/issues/20318#issuecomment-601396811)
- [ShadowBlitz16 makes an... interesting comment](https://github.com/godotengine/godot/issues/20318#issuecomment-605699006)
```gd
# `export` replaces `class_name`
# `:` replaces `extends`
# note non-use of `var`
export MyClass : Node2D

# `signal` is kept
signal mySignal

# use `group` for inspector
group(MyHeader, "res://icon.png" )

# `:` replaces `export(type)`, unifying type-hints and export-hints
export var my_property : Array(int) setget _set_my_property, _get_my_property

# no need for `onready`
# variables declared outside of `_ready` automatically try to be `onready` vars
var test = 0

# others are kept
```
- Think I prefer if class declaration was explicit, and then add `tool` as a decoration
- of course, one must wonder if there isn't a more elegant way of expressing these things purely as node transformations






## Godot Inspector Headings Refs
- [How to add subcategories to the inspector "Script variables" section?](https://godotengine.org/qa/3196/how-add-subcategories-inspector-script-variables-section)
  - how to sort things under headings (q/a)
  - shows obscure meta-manipulative way
- [Add a way to add categories to the script variables section from GDScript #4378](https://github.com/godotengine/godot/issues/4378)
  - how to sort things under headings (discussion)
- [Add categories to GDScript exported variables #10303](https://github.com/godotengine/godot/pull/10303)
  - how to sort things under headings (discussion)
- [GodotDocs Advanced Exports](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_exports.html#advanced-exports)
  - how to meta-manipulatively accomplish edits to the Inspector
- [Nodes added via EditorPlugin shouldn't have properties under Script Variables #10799](https://github.com/godotengine/godot/issues/10799)
  - can't tell what happened with this issue
- [SubClass as Custom types for export #3597](https://github.com/godotengine/godot/issues/3597)
  - better way of writing it using actual classes





## Godot Inspector Headings
- [How to add subcategories to the inspector "Script variables" section?](https://godotengine.org/qa/3196/how-add-subcategories-inspector-script-variables-section)
  - images are missing
  - an ad-hoc method is to override `_get(prop: str)` and `_set(prop: str)`
- [Add a way to add categories to the script variables section from GDScript #4378](https://github.com/godotengine/godot/issues/4378)
  - there are some lovely/bad ideas in here
  - I wonder why no-one seems to realize that they are just talking about nested objects
```gd
export (category="rotate"):
    var rotate_speed = 60
    export (category="limits"):
        var unrotate_children = false
        export (category="axis"):
            export (category="z"):
                var max = pi
                var min = 0
    var rotate_inside_tree = false
```
- you can turn this into a bunch of objects with separate scripts/variables
```yaml
scene:
  rotate:
    limits:
      axis:
        z: 
```
```yaml
scene:
  rotate:
    script: rotate.gd
    rotate_speed: 60
    children:
      limits:
        script: limits.gd
        unrotate_children: false
        children:
          axis:
            script: axis.gd
            children:
              z:
                script: z.gd
                max: Math.Pi
                min: 0
    rotate_inside_tree: false
```
- hey! This guy has a brain!
> [nhold](https://github.com/nhold) commented on Dec 9, 2018
> 
> I am not sure if this exists, but wouldn't it make sense to create a new class\struct for categories of variables which would then be the category? I.e
> ```gd
> class axis
>     export var max = pi
>     export var min = 0
> 
> class limit
>     export(bool) var unrotate_children = false
>     export(axis) var xAxis = null
>     export(axis) var yAxis = null
>     export(axis) var zAxis = null
> 
> class rotate
>     export(int) var rotate_speed = 60
>     export(bool) var rotate_inside_tree = false
>     export(limit) var limits = null                
> ```
> This to me feels more OOP-like, which is the feel Godot is going for I think.
- [Xrayez commented something really neat](https://github.com/godotengine/godot/pull/10303#issuecomment-618979118)
```yaml
# (Screenshot from Inspector)
Node:
  Script Variables:
  Arms:
    Left:
      Left Layer Ofs 1: 0
      Left Layer Ofs 2: 0
    Right:
      Right Layer Ofs 1: 0
      Right Layer Ofs 2: 0
  Node2D:
  CanvasItem:
```
```gd
func _get_property_list():
	var props = []
	add_category("Arms", props)
	add_group("Left", props)
	add_property("left_layer_ofs_1", TYPE_REAL, 1 / 3.0, props)
	add_property("left_layer_ofs_2", TYPE_REAL, 2 / 3.0, props)
	add_group("Right", props)
	add_property("right_layer_ofs_1", TYPE_REAL, 1 / 3.0, props)
	add_property("right_layer_ofs_2", TYPE_REAL, 2 / 3.0, props)
	return props


func add_group(p_name, r_properties: Array):
	r_properties.push_back({
			name = p_name,
			type = TYPE_NIL,
			hint = PROPERTY_HINT_NONE,
			usage = PROPERTY_USAGE_GROUP | PROPERTY_USAGE_SCRIPT_VARIABLE,
		}
	)


func add_category(p_name, r_properties: Array):
	r_properties.push_back({
			name = p_name,
			type = TYPE_NIL,
			hint = PROPERTY_HINT_NONE,
			usage = PROPERTY_USAGE_CATEGORY | PROPERTY_USAGE_SCRIPT_VARIABLE,
		}
	)


func add_property(p_name, p_type, p_value, r_properties: Array):
	r_properties.push_back({
			name = p_name,
			type = p_type,
			value = p_value
		}
	)
```
- [this is a better way of writing ideas using classes](https://github.com/godotengine/godot/issues/3597)
```gd
class a():
    export var b = 0
    func _init(in):
        b = in

export(a) var custom_export
# export(array,a) var custom_export_array
```






## Music Player Problems
- Recall that the editor refused to update values depending on whether the script changed at runtime
- note the `tool` at the top of the script - the inspector does not update in realtime
- [Signal when Inspector updates/exported property changes #16365](https://github.com/godotengine/godot/issues/16365)
  - related?





## Godot Advanced Exports
> ## [Advanced exports](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_exports.html#advanced-exports)
> 
> Not every type of export can be provided on the level of the language itself to avoid unnecessary design complexity. The following describes some more or less common exporting features which can be implemented with a low-level API.
> 
> Before reading further, you should get familiar with the way properties are handled and how they can be customized with [`_set()`](https://docs.godotengine.org/en/stable/classes/class_object.html#class-object-method-get-property-list), [`_get()`](https://docs.godotengine.org/en/stable/classes/class_object.html#class-object-method-get-property-list), and [`_get_property_list()`](https://docs.godotengine.org/en/stable/classes/class_object.html#class-object-method-get-property-list) methods as described in [Accessing data or logic from an object](https://docs.godotengine.org/en/stable/getting_started/workflow/best_practices/godot_interfaces.html#doc-accessing-data-or-logic-from-object).
> 
> ### Warning
> 
> The script must operate in the `tool` mode so the above methods can work from within the editor.
> 
> ### [Adding script categories](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_exports.html#adding-script-categories)
> 
> For better visual distinguishing of properties, a special script category can be embedded into the inspector to act as a separator. `Script Variables` is one example of a built-in category.
> 
> ```gd
> func _get_property_list():
>     var properties = []
>     properties.append(
>         {
>             name = "Debug",
>             type = TYPE_NIL,
>             usage = PROPERTY_USAGE_CATEGORY | PROPERTY_USAGE_SCRIPT_VARIABLE
>         }
>     )
>     return properties
> ```
> - `name` is the name of a category to be added to the inspector;
> - `PROPERTY_USAGE_CATEGORY` indicates that the property should be treated as a script category specifically, so the type `TYPE_NIL` can be ignored as it won't be actually used for the scripting logic, yet it must be defined anyway.
> ### [Grouping properties](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_exports.html#grouping-properties)
> 
> A list of properties with similar names can be grouped.
> 
> ```gd
> func _get_property_list():
>     var properties = []
>     properties.append({
>             name = "Rotate",
>             type = TYPE_NIL,
>             hint_string = "rotate_",
>             usage = PROPERTY_USAGE_GROUP | PROPERTY_USAGE_SCRIPT_VARIABLE
>     })
>     return properties
> ```
> 
> - `name` is the name of a group which is going to be displayed as collapsible list of properties;
> - every successive property added after the group property will be collapsed and shortened as determined by the prefix defined via the `hint_string` key. For instance, `rotate_speed` is going to be shortened to `speed` in this case.
> - `PROPERTY_USAGE_GROUP` indicates that the property should be treated as a script group specifically, so the type `TYPE_NIL` can be ignored as it won't be actually used for the scripting logic, yet it must be defined anyway.




## Misc Godot Refs
- [Ability to link scene with class #21187](https://github.com/godotengine/godot/issues/21187)
  - lots of interesting discussion in here to follow up on
  - important ideas here for code clarity
- [Allow to create custom more complex nodes #1606](https://github.com/godotengine/godot-proposals/issues/1606)
  - read it carefully
- [List of Export Hints?](https://godotengine.org/qa/6099/list-of-export-hints)
  - how to build an inspector interface
- [GodotDocs GDScript exports](https://docs.godotengine.org/en/stable/getting_started/scripting/gdscript/gdscript_exports.html)
  - how to build an inspector interface
- [Kobuge's Circular Container Reflective Properties](https://github.com/KOBUGE-Games/CircularContainer/blob/master/addons/KOBUGE-games.CircularContainer/CircularContainer.gd#L94)
  - a curious study





## Misc Godot
- use this to instantiate a scene when calling a script instead
- can inherit signals too! (when entering tree)
```gd
tool
extends Node
class_name TestScn

func _enter_tree():
    call_deferred("_replace")

func _replace():
    replace_by(load("res://test.tscn").instance())
```






## Label Properties
- **Color**
  - (`Red`, `Green`, `Yellow`, `Grey`, `Blue`, `Pink`, `Purple`, `Orange`, etc)
  - helps distinguish at a glance
- **Name**
  - (`class reference`, `meta`, `pull-request`)
  - helps distinguish when using search tools
- **Description**
  - ("Issues about the class reference, which should be addressed on the Godot engine repository")
  - Literal explanation of what the label is
  - Can be hyperlinked to a wiki page which talks more about it
- **Prefix**
  - (`topic:`, `platform:`)
  - helps to contextualize the label
  - see Wikipedia for more examples
  - (`platform:win10`, `platform:linux`, `platform:android`)
- **Search**
  - Ability to quickly and easily look for labels, labelled-pages, and generally work with labels





## Example Projects
- [Voxel Tools for Godot](https://github.com/Zylann/godot_voxel)
  - check the `docs/` folder
  - note that the `docs/api/` and `docs/classes/` are almost useless
  - the documentation provided is "Step-By-Step"
- [Nakama Godot](https://github.com/heroiclabs/nakama-godot)
  - Good In-Code documentation - to a point
  - Not great at giving an overall understanding
- [Java ATM Simulation](http://math-cs.gordon.edu/courses/cs211/ATMExample/)
  - *Absurdly* well documented
- [Kilo Text Editor](https://viewsourcecode.org/snaptoken/kilo/02.enteringRawMode.html)
  - Explained like a story
- [5 Examples of Excellent API Documentation (and Why We Think So)](https://nordicapis.com/5-examples-of-excellent-api-documentation/)
  - Talks more-so about *public* API's, but still useful for *private* API's (What we are creating)






## Example Doc Tokens
- `# `:         Technical Comment
- `# @param`:   Why this thing/semantic id of the thing
- `# @return`:  Why it returns this thing/semantic understanding of the returned item
- `# @brief`:   Short-Form description of the item
- `# @desc`:    Long-Form description of the item
- `# @example`: Brief snippet showing how to use it
- `# @tutorial`: See this page on how-to...
- `# @todo`:    Work Remaining
- `# @how`:     How it Works
- `# @why`:     Why we chose to do this





## Ad-Hoc Tokens
- (Since no standard yet exists)
- Use `@` to identify a token
- Place tokens behind `# ` Comments
```gd
# @param
# @return
# @body
```





## Tokens Arent Enough
- gosh dang, the real power would be to reflect on the code itself to link documentation together
- we can do this to a certain extent from within the editor, just don't bother with making wiki pages
- many "filler pages" - that just explain how the project is structured together
- normally we might use `readme.md` files
- however, godot ignores `.md` files, and provides no support for editing them
- instead, we will take a somewhat java-esque approach of providing empty classes full of docs to show how a project is structure
- *This* is where we can do our back-linking
- And yet....
- Consider how exactly people will be using and interacting with the code
- Having the "Why" Text presented as just another `script` will likely confuse them
- Better to move these out into separate files and allow the to navigate both at the same time
- Or, as literate-docs
- But not as just "another script"
- We should probably use markdown for these
- Include them in the same folders as the scripts
- But instead encourage people to just use the github website to browse the docs there






## Excluded Tokens
- `partof`:   Can be derived from the Folder
- `topic`:    Can be derived from the Class Inheritance and Composition
- `contains`: This is back-linking, only children should know parent





## Terms

### Unity
- A Popular game engine
- Noteworthy for its highly reflective interface
- Popularized the notion of "RunTime", "EditTime", and "TestTime"
- Very Heavy, probably not suitable for non-technical personnel
- Many free resources exist

### Godot
- A FOSS Game Engine
- Noteworthy for inspiring many concepts that other game engines use
- Much smaller and simpler, with a cleaner abstraction mechanism
- Many free resources exist

### FOSS
- Free and Open Source Software
- Non-Proprietary, free to use for any purpose
- Code is exposed to the Internet, issues are publicly discussed and addressed
- FOSS projects live and die by their popularity

### Inspector
- A special, reflective interface native to most game engine editors
- Unity and Godot both provide ways to interact with the inspector from scripts

### Attributes
- (From Unity)
- These are a way of tagging variables, methods, and other features of a script with metadata
- These can then be used to inform the Inspector how to behave/what to display

### Scripts
- A particular kind of file focused on providing functionality as opposed to description
- Example: Sticky Note and Marker
- These two tools provide *functionality*

### Scenes
- A particular kind of file focused on providing description as opposed to functionality
- Example: A sticky note with writing on it
- The sticky note and marker *provided* functionality, and we simply record *what happened* as a result

### Reflection
- A concept in computer science from philosophy
- Describe the ability of a system to inspect itself
- Example: A sticker with the words "this is a sticker" written on it
- Classical Example: The "This is not a Pipe" Pipe Painting
- Reflection allows many compiler optimizations and generally enables a cleaner, simpler way of talking about things

### Objects
- Part of Object Oriented Programming

### Label
- An identifier that certain commenting systems use to help users find relevant posts
- Example: tagging an apple with the words "Fruit" is a means of "labelling" it and helps others find the apple when they look for fruit
- Most Issue systems have some form of these
- Good Issue systems will have *lots* of these, ranging from 30-60 labels, with various types
- Part of Category Theory (math)

### Issue
- A way of talking about changes to a project
- Inspired from forum systems, these provide more features and structure

### Tooltip
- A popup box providing explanation for a thing
- Often used in mouse-driven UI

### Meta
- A synonym for reflection

### Obscurity
- A measure of ease-of-access and obviousness to information
- A beginner-friendly project must acknowledge where and when this occurs and help users through it

### Fixme
- a keyword to indicate something is broken and needs attention
- popular to use within a script/document along with `WARN`, `ERROR`, `WONTFIX`, `TODO`, `DANGER`, etc
- Used here to indicate sections I need to revisit with `[one-word-links]` using `[fixme]`
- (can find instances with `ctrl+f`, and then typing `[fixme]`, and hitting `enter`)

[fixme]: #fixme

### Instance
- Example: A chocolate chip cookie is an instance of, "the chocolate chip cookie", obtained by following the, "Chocolate Chip Cookie", recipe
- A computer science concept from philosophy
- Make a new, distinct copy of a pre-existing thing whilst inheriting all the traits of that thing

### Reference
- A computer science concept from philosophy
- Refer to something that already exists
- Often reflective, and affects the instances of a thing

### Annotation
- synonym for Attribute






