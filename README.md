# neat-2.x Omega Family
The Omega family is a group of mixins that accomplish several supplemental goals within the Bourbon-Neat framework.

- `@mixin alpha` Clears the float on the specified object. Generally this is the first item in a new row. This is new with neat 2.0

- `@mixin nth-alpha` Clears the float on the specified `nth-of-type` object.

- `@mixin omega` Adds a margin-right to a specified object. Generally this is only needed for centered flex layouts.

- `@mixin omega-flex` Adds a margin right to the specified object, or if auto, to the last child of the grid.

- `@mixin nth-omega` Adds a margin right to the specified `nth-of-type` object, and clears the `nth+1` object.

Originally created to address: https://github.com/thoughtbot/neat/issues/543

# use

`npm install --save-dev neat-omega`, then add `@import neat-omega` after your `@import neat` statement in your scss.

You will need to add `node-modules/neat-omega/core/` to your sass import paths.
