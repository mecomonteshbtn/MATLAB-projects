# **Notes on Usage**

## About the GUIs / Motivation

The GUIs are arraigned in approximate order of complexity, but do not follow a definite progression. The first few are
VERY basic, and are intended to demonstrate the first few questions a new GUI writer might have. As such, the more
advanced reader may think them repetitive. To a certain extent, the point is granted. There are many overlapping concepts
in different GUIs and this is intentional, if not unavoidable. However, I believe that anyone working their way through each
and every example until it is fully grasped should have little trouble tackling a more involved project later. Even if a particular
question is not described here, the skills acquired through such an endeavor should be enough to give an idea of how to
approach a particular need, or the right questions to ask in searching for the solution.
Some of the GUIs have suggested exercises in the help section. Thus, as intimated above, the GUI files may serve
to not only answer specific questions, but as a tool to learn more about making GUIs in MATLAB. I would be interested in
seeing how people implemented these suggested exercises, and suggestions for more exercises.
Many of the examples and questions within are inspired directly by questions asked, sometimes repeatedly, on the
MATLAB newsgroup. I will be on the lookout for more questions and examples to add to the list in the future. If you feel
there is some common (even not-so-common!) question which is missing here, please let me know through email. I would
be happy to add it to the list and/or make another GUI!

## Data Sharing/Storage in GUIs

There are many approaches to the problem of storing and passing data between elements of a GUI and other
workspaces. Among the approaches I have used in the past are: global variables, storage in userdata properties,
storage/retrieval with get/setappdata and guidata. In the GUI examples that follow, none of these approaches are used.
Instead the method used will be the one I currently use in my professional capacity. This is the method I have come to
prefer for reasons not elaborated here. As the GUI examples are arraigned roughly in order of complexity, anyone with
modest MATLAB skills should be able to distinguish this technique quite easily; thus I will not discuss the method in detail
here. The matter is addressed only as a way to introduce the notion that whatever method one prefers, the examples
furnished here are easily adaptable to individual styles. I would be happy to discuss any questions in this regard through
email.

## Syntax Considerations

All of the handles to the various objects created in each GUI, as well as data needed to run the GUI, are stored in a
main structure called S. The fieldnames for handles are in lower case letters, and the fieldnames for data are in uppercase
letters. Callback function names are designated with the fieldname of the object to which they correspond, followed by
'_call.' Other function names are similarly designated. For instance, a keypressfcn will end in '_kpfcn' and a buttondownfcn
will end in '_bdfcn.' The code of each GUI is generously commented, and subtle points may be examined in the comments
(see for example the last comment block in GUI_37). If anything seems unclear, look first in the comments, and if
satisfaction is not found there feel free to email me.

## A Final Note

I am especially interested in feedback from those who use these files to learn how to make GUIs without GUIDE. If
that has been your purpose, and you have read the files and done some of the exercises, please provide feedback on your
experience. I especially want to know if anything could be clearer, or if there are pieces of the GUI puzzle which could be
better presented. Do not hesitate to contact me with questions about the exercises or any other aspect of the code.
Also included is a helper function called previewGUIs which allows the user to quickly run thr
