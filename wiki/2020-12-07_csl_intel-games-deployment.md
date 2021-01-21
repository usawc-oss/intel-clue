---
created: 2020-12-07T10:52:00-05
Last Updated: 2020-12-20T11:43:00-05:00
author:
  name: Peter James Mangelsdorf
  email:
  - peter.mangelsdorf@armywarcollege.edu
---


### [Wiki Index](index.md) | [Project Index](../index.md) | [Game Index](../intel-game/index.md)


# Intel Games Deployment Solutions






## Platforms
```yaml
GitHub:
  Git:      [Source Code, Version Control]
  Releases: [Executables, Versioned]
  Wiki:     [PUBLIC-ONLY, notes]
  Website:  [PUBLIC-ONLY, static, simple]
  Issues:   [Track problems - wiki/forum like]
  Tasks:    [Board, Assign to People]
  Overall:
  - Integrates with the Codebase
  - Online, Public by default
  - Does not integrate with Office by default
Office:
  Planner:    [Tasks, Kanban, Assign to People]
  Outlook:    [Calendar, Emails]
  OneDrive:   [Binary Files, Local Executable]
  SharePoint: [Website]
  Teams:      [Messaging, Messy]
  OneNote:    [Notes, Messy]
  Overall:
  - Integrates with Itself
  - Useless for anything Non Microsoft
Azure:
  Website:    [Static, Dynamic, Public/Private]
  Networking: [Real-Time Multiplayer]
Google Cloud Platform:
  Website:    [Static, Dynamic, Public/Private]
  Networking: [Real-Time Multiplayer]
```




## Custom HTML on SharePoint
- [Custom HTML and CSS in sharepoint](https://sharepoint.stackexchange.com/questions/264764/custom-html-and-css-in-sharepoint)
- is possible?





## What is Our Focus
- Are we focusing on `CSL` in general or `dsw-intel-games` specifically?
- Create GitHub Organization: `dsw-intel-games`




## Local Static Site Generation
- Cannot use `GitHub-Jekyll` on a private repo
- Jekyll is difficult to install
- Hugo may be easier to use
- A CMS helps the less technical users
- Why not use WikiMedia?




## Hugo References
- [Hugo Code Repo](https://github.com/gohugoio/hugo)
- [A Git-based CMS exists for Hugo: Forestry](https://forestry.io/)
- [The visual future of content editing](https://www.youtube.com/watch?v=iPDCmbaEF0Y)
- [Build Hugo](https://github.com/lowply/build-hugo)
  - use to build a hugo website from github





## DigitalGov
- Who is paying for this?
- Who is leading this?
- Do we want to engage with this?
- [They are on GitHub](https://github.com/GSA)
  - **858 repos!!!**
- [Federalist: ???](https://federalist.18f.gov/)
  - [expensive, is this a business?](https://federalist.18f.gov/pricing/)
- [run by the GSA](https://en.wikipedia.org/wiki/General_Services_Administration)
- They use Jekyll (Ruby) for their stuff
- Relationship to the Army?
  - last posts are from 2017
  - likely not being used, esp. internally
- [U.S. Web Design System 2.0](https://designsystem.digital.gov/whats-new/updates/2019/04/08/introducing-uswds-2-0/)
  - [has a GitHub Organization](https://github.com/uswds/)
  - [is not used thoroughly by the Army](https://designsystem.digital.gov/getting-started/showcase/all/)
  - looks to largely be a `css` framework than anything else
  - [Introducing USWDS 2.0](https://designsystem.digital.gov/whats-new/updates/2019/04/08/introducing-uswds-2-0/)
  - [main repo](https://github.com/uswds/uswds)
- [Technology Transformation Services](https://www.gsa.gov/about-us/organization/federal-acquisition-service/technology-transformation-services)
  - > A centralized team of technical experts that accelerate agency-wide IT modernization.
  - > A digital consulting office that partners with agencies to help them build or buy digital services.






## Self Hosted Solutions
- Need to get in touch with NEC about trying this
- [Awesome-Selfhosted](https://github.com/awesome-selfhosted/awesome-selfhosted)
  - useful links
- ~~WikiMedia~~ MediaWiki
  - [How We are Using Media Wiki For Documentation Management](https://www.youtube.com/watch?v=_7Dk-leIPt0)
  - [Using A Self Hosted MediaWiki As A Private Documentation Server with Visual Editor](https://www.youtube.com/watch?v=DiZYiBf9ECM)
  - [Hosting Your Own Wiki with MediaWiki on Ubuntu 18.04 on Linode](https://www.youtube.com/watch?v=FN9VdCm0FrU)
  - has a very nice visual editor
  - saves to plaintext
  - `xml`/office clipboard recognition
- [Gitea](https://gitea.io/en-us/)
  - Basically most of the features of GitHub
  - Just not the community
  - great for private community
  - does *not* provide *hosting services*
    - requires your own network administration/security
    - may make things difficult
- Teams
  - wiki is not backed up (no history; bad OneDrive integration)
  - wiki
  - Not really feature-full
- [DokuWiki](https://www.dokuwiki.org/start)
  - No Database





## OneNote on SharePoint
- I would like to turn OneNote pages into webpages
- then use the links, from writing the notes correctly, to then build up site navigation
- OneNote is closest thing to a wiki that Microsoft has, even though I hate it
- What happened to our plans to use WikiMedia?





## Convert/Export OneNote to SharePoint Pages
- [can I convert onenote notebooks to html](https://answers.microsoft.com/en-us/msoffice/forum/all/can-i-convert-onenote-notebooks-to-html/38fce914-67fe-44c2-81c4-7ec68d8c6ace)




## Embed OneNote in SharePoint
- [OneNote document embed in a SharePoint webpage](https://answers.microsoft.com/en-us/msoffice/forum/all/onenote-document-embed-in-a-sharepoint-webpage/c197219d-dfd3-4d98-8fc2-3b73b25c88e6)
- [Copying OneNote Files from/to OneDrive and SharePoint](https://techcommunity.microsoft.com/t5/onenote/copying-onenote-files-from-to-onedrive-and-sharepoint/m-p/95329)





## Too Complicated
- Eh, screw it
- Just add a `wiki/` folder and put our pages in there
- occasionally generate a `pdf` of all the pages and distribute it on *Teams*




## Text Editors
- (ask NEC to install one of these, along with Git)
- NotePad++
  - Open Source, Free
  - Simple Code
  - [Website](https://notepad-plus-plus.org/)
  - [Wikipedia](https://en.wikipedia.org/wiki/Notepad%2B%2B)
  - [Source Code](https://github.com/notepad-plus-plus/notepad-plus-plus)
- VS Code
  - Owned by Microsoft
  - Based on Atom, popular text editor
  - Open Source, Free
  - [Website](https://code.visualstudio.com/)
  - [Wikipedia](https://en.wikipedia.org/wiki/Visual_Studio_Code)
  - [Source Code](https://github.com/Microsoft/vscode)








# Offtopic

## Plain Language
- [Plain Language and Descriptive Link Language](https://www.youtube.com/watch?v=H_XLTAEp6lQ)
- [How To Use Plain Language on a Government Website](https://www.youtube.com/watch?v=QtXSCwphuzg)
- [Writing science in plain English](https://www.youtube.com/watch?v=Mn7f5tsgjx8)
- [Checklist for Plain Language](https://www.plainlanguage.gov/resources/checklists/checklist/)
- [Checklist for Plain Language on the Web](https://www.plainlanguage.gov/resources/checklists/web-checklist/)

## OneNote Concerns?
- [OneNote has a dark side. Stop using OneNote until you read this....](https://community.spiceworks.com/topic/2246511-onenote-has-a-dark-side-stop-using-onenote-until-you-read-this)
  - ehh....
  - know what you are using
  - and doubt everything
  - trust, but verify










