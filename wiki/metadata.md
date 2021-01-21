---
Created: 2020-12-19T14:37:00-05:00
Last Updated: 2020-12-20T11:43:00-05:00
Creator:
  File: person-peter-mangelsdorf.md
---




### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)



# Metadata
- (acceptable/recognized within this project)


## About
- Markdown uses YAML "Frontmatter" to insert metadata as plaintext within a plaintext file
- Contrast this with the tagging scheme in OpenOffice or Image formats (`xml`)
- [YAML](https://yaml.org/ "Main Website") is a simple, terse way of writing machine-readable text
- You can learn more on [the Wikipedia page](https://en.wikipedia.org/wiki/YAML "Wikipedia: YAML")
- This creates a duality of the content expressed within a file
- if you need to write something for a machine, use the frontmatter
- If a human needs to read it, write it in Markdown




## Style
- Capital Letters
- Human Friendly Spacing



## Reference
- [Use the *Schema.Org* style for most things when possible](https://schema.org/ "Schema.Org Official Website")
- [Microsoft also makes heavy use of Markdown, and has its own schema for metadata](https://marketplace.visualstudio.com/items?itemName=docsmsft.docs-markdown "Docs Markdown Extension")



## Elements
- Last Updated
- Assigned To


## Time

### Schema
```yaml
time: # Must be Date, Date-Time, or Time
```

### Example
```yaml
# Full
# Most explicit; most preferred
time: 2020-12-19T14:38:00-05:00
```
```yaml
# Date Only
# Ok for most uses
time: 2020-12-19
```
```yaml
# Time Only
# Don't use this, its not very specific
time: 14:38:00
```
```yaml
# Full, No Timezone
time: 2020-12-19T14:38:00
```




