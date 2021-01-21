---
time: 2020-12-16T11:51:00-05:00
Last Updated: 2020-12-20T11:43:00-05:00
---


### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)


# Strategic Intel Wargames MS Teams Problems




## Logo
- [Combat search and rescue](https://en.wikipedia.org/wiki/Combat_search_and_rescue)
- "CSAR Elvis Patch"





## Channels
```yaml
- name: Work
  desc: |
    Internal Collaboration
    Dev-Oriented: Design, Code, Docs, Learning
- name: General
  desc: ""
```




## Where to Put Notes

### SharePoint Wiki Pages
- Bad
  - No Offline Access
  - Obscure Access
  - Does Not Immediately Integrate with Teams
- Good
  - Limited Version Control
  - WYSIWYG
- Peter's Opinion

### Teams OneNote
- Bad
  - Channels Limited to Sections
  - Not Obvious Access to Full Notebook
  - Not Version Controlled
  - Cannot See "Unlinked" sections from a channel
  - Obscure File Access
  - Must live on the SharePoint
- Good
  - Can still use "standalone" - but cannot integrate into a channel if done so
  - Can use from teams - albeit at a worse interface
  - Can use from NIPRnet
  - Hooked Into by Teams API
- Peter's Opinion
  - Probably the best option

### Teams Wiki
- Bad
  - Not a Wiki
  - No Backup
  - No Offline Access
  - Not Version Controlled
- Peter's Opinion
  - Completely unsafe to use for any kind of valuable information

### Standalone OneNote
- Bad
  - Errors
  - Not Plaintext
  - Way too much formatting
  - Not Version Controlled
  - No Direct Reference to Code
  - Does Not Immediately Integrate with Teams
- Good
  - Offline Access
  - WYSIWYG
  - Ease of Linking
  - Can live anywhere
- Peter's Opinion

### Repo Plaintext
- Bad
  - Not WYSIWYG
  - Some Unexpected Behavior
  - Requires Git
  - No GitHub Wiki Features
  - Does Not Immediately Integrate with Teams
- Good
  - Plaintext (Clean, Hygienic)
  - Ease of Linking
  - Version Controlled
  - Direct References to Code
  - Always Included and Available with the Source Code
- Peter's Opinion
  - Most likely to survive
  - but few will be able to edit and appreciate it

### GitHub Wiki
- Bad
  - Not Private
  - No Branching
  - Is own webpage
  - Obscure Local Copying
  - Requires Git
  - Does Not Immediately Integrate with Teams
  - Not WYSIWYG
- Good
  - Plaintext
  - Linking
  - Automatic Push to Website
  - Limited Version Control
  - Direct References to Code
- Peter's Opinion
  - Proto-WYSIWYG interface may not be enough for anyone to use it
  - may be tedious enough to preclude others from using is





## Where to Put Tasks
- GitHub Issues
  - Refs
    - [Managing your work with issues and pull requests](https://docs.github.com/en/free-pro-team@latest/github/managing-your-work-on-github/managing-your-work-with-issues-and-pull-requests)
    - [Mastering Issues](https://guides.github.com/features/issues/)
  - Good
    - Sits with Code
    - Robust Linking/Commenting
    - A "Teams App" exists to embed issues as a list
    - mention users
    - mention issues
  - Bad
    - Need GitHub account
    - Need MFA to access (setup before using on NIPRnet)
- MS Planner
  - Bad
    - Too many ways to say the same thing
    - Enterprise accounts only (`.edu`)
    - Cannot mention users/issues
  - Good
    - Can share with others
    - Can assign to others
- MS Todo
  - Bad
    - Cannot share with other people
    - Cannot assign to others
  - Good
    - Personal accounts have access





## Labels
- `Doc`
- `Talk`
- `Code`
- `Learn`
- `Plan`
- `Physical`




## GitHub Default Labels
- `bug`
- `documentation`
- `duplicate`
- `enhancement`
- `good first issue`
- `help wanted`
- `invalid`
- `question`
- `wontfix`




## Minimizing Planner's Complications
- Identify Domains
  - **Type** (Docs, Code, Talk, Plan, Learn, Physical)
  - **Status** (Not Started, InProgress, Unassigned, Impeded, Done)
  - **Dependency** (Blocks, DependsOn, RelatedTo, PartOf)
  - **Aspect** (Wiki/Docs, Game/Product, Stakeholders/Export/Service, Deployment)
- Identify Display-Options
  - **Title** (one per task, no-rules)
  - **Buckets** (only 1 per task, no-rules)
  - **Labels** (only 6 total, as many per task, no-rules)
  - **Assignee** (0..infinity people assignable, no-rules)
  - **Progress** (NotStarted, InProgress, Completed)
  - **Priority** (Low, Medium, High, Urgent)
  - **Start Date**/**End Date**
  - **Notes** (Text description)
  - **Comments** (Are emailed to everyone)
  - **Checklist** (Are not sub-issues, but can become independent issues)
- First Use
  - **Type-Labels** (Use labels to indicate the type of work)
  - **Status-Progress-Assignee-Comment** (Use Progress and Assignees to indicate status, use Comments to indicate emergencies)
  - **Dependency-Title** (Link Tasks by compositional names)
  - **Aspect-Buckets** (Use Buckets to indicate who we are working with)




## Talking About Issues
- GitHub/GitLab: Append as Comments
- Link to Issue from Code
- Link to Code from Issue
- Link to Wiki from Issue
- Link from Wiki to Issue
- Can we do this in OneNote?
- How can we specify a page to open in OneNote?
- using *very* long *absolute* links
  - these are highly fragile and will break if we make *any* changes to the layout/location of a notebook
  - it is safer to link to a local **references** page which says how to find the page in question
  - it may also be safer to just copy notes to OneNote as opposed to using OneNote as a centralized solution






## Including Documentation
- If we use OneNote, how do we include it in the repo?
- we could serialize the wiki to html and import that into OneNote
- we could occasionally export a backup (`.mht`) and include it in the repo
- difficult to link to it, as link may easily break





## Where to Put Dates
- `.edu` outlook
- `.mil` outlook




