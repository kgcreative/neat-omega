# neat-2.x-omega
Creates a margin right on the last object in a row and the last object in the container which causes a centered flexbox to self-correct. Additionally, adds a `nth-of-type:($selector)+1 { clear: left }` to the next object in the grid to account for proper row clearing of objects that are shorter than their siblings.

Addresses: https://github.com/thoughtbot/neat/issues/543
