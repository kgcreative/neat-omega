# neat-2.x Omega Family
The Omega family is a group of mixins that accomplish several supplemental goals within the Bourbon-Neat framework.

`@mixin alpha` Clears the float on a specified object.

`@mixin nth-alpha` Clears the float on the specified `nth-of-type` object.

`@mixin omega` Adds a margin-right to a specified object.

`@mixin omega-flex` Adds a margin right to the specified object, or if auto, to the last child.

`@mixin nth-omega` Adds a margin right to the specified `nth-of-type` object, and clears the `nth+1` object.

Creates a margin right on the last object in a row and the last object in the container which causes a centered flexbox to self-correct. Additionally, adds a `nth-of-type:($selector)+1 { clear: left }` to the next object in the grid to account for proper row clearing of objects that are shorter than their siblings.

Originally created to address: https://github.com/thoughtbot/neat/issues/543
