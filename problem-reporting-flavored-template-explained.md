# Context 
## What is the problem? 
> Description of the problem as observed by the victim. **ANYBODY** should be able to understand this part, don't be overtechnical.
It's better to include also the context leading to the discovery of the problem, it might help to figure out how to reproduce the said problem and understand why would someone encouter that problem.

---

*Discovered bug when I wanted to move some window with my i3 shortcuts : combination of key strokes triggers unwated behavior.*

### Unwanted behavior:

---

*A focused i3 window is displaced in the workspace 6 when striking some keys*

### Steps to reproduce the problem:

---

1. *Focus any window outside workspace 6*
2. *Then press:* `<Cmd> + <DKey> + <h|j|k|l>`

### Desired behavior [optional section]:

---

*It would certainly be better if those keys once pressed lead to nothing as an action.*

## Current configuration & environment: 
> What is the technical context of the problem? A list could be a well-describing format. It should include as many meaningful information as possible, such as the Operating System, the softwares that could interact or get in the way.

---

+ *Linux Manjaro*
+ *i3 window manager*
+ *Keychron Q11 QMK US ansi keyboard*
+ *OS side: set an US international layout using setxkbmap:*
`setxkbmap -layout us -variant intl`
+ *hardware side: ecpgpp qwerty lafayette layout configured thanks to this repo:* [il-as/qmk_userspace](https://github.com/il-as/qmk_userspace)

# Potential leads [optional section]:
> If you have clues on what's happening, or some ideas or resources that could be useful to solve the problem or design a solution, write it here.

---

*I think that the deadkey + h, j, k or l must involve the outputting of a 6 somehow, maybe even a shift and 6, and so the regular shortcut command is beiing produced and displaces the window in wk6*

