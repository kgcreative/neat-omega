# Neat-Omega Family for Neat 2.X
The Omega family is a group of mixins that accomplish several supplemental goals within the Bourbon-Neat framework.

Originally created to address: https://github.com/thoughtbot/neat/issues/543

# Install
## with NPM

- `npm install --save neat-omega`
- add `@import neat-omega` after your `@import neat` statement in your scss.
- add `node-modules/neat-omega/` to your sass import paths.

## with Bower
- `bower install neat-omega`
- add `@import neat-omega` after your `@import neat` statement in your scss.
- add `bower_components/neat-omega/` to your sass import paths.

# Documentation

## alpha
`@include alpha($selector: self, $grid: $neat-grid)`
- Clears the float on the specified selector. Generally this is the first item in a new row.

<strong>example SCSS</strong>
```SCSS
.element:nth-child(3n+1) {
  @include alpha;
}
```
<strong>example CSS</strong>
```CSS
.element:nth-child(3n+1) {
  clear: left;
}
```
---
<strong>example SCSS</strong>
```SCSS
.last-element {
  @include alpha('&:last-child');
}
```
<strong>example CSS</strong>
```CSS
.last-element:last-child {
  clear: left;
}
```
---
<strong>example SCSS</strong>
```SCSS
@include alpha('.custom:nth-child(3n+2)');
```
<strong>example CSS</strong>
```CSS
.custom:nth-child(3n+2) {
  clear: left;
}
```

## nth-alpha
`@include nth-alpha($selector, $grid: $neat-grid)`
- Clears the float on the specified `nth-of-type` selector. This is mostly for convenience, since you can achieve the same result with `alpha`

<strong>example SCSS</strong>
```SCSS
.nth-element {
  @include nth-alpha(4n+1);
}
```
<strong>example CSS</strong>
```CSS
.nth-element:nth-of-type(4n+1) {
  clear: left;
}
```

## omega
`@include omega($selector: self, $grid: $neat-grid)`
- Adds a margin-right to the specified selector. Generally this is only needed for centered flex layouts.

<strong>example SCSS</strong>
```SCSS
@include omega('.element:nth-of-type(3n+2)');
```

<strong>example CSS</strong>
```CSS
.element:nth-of-type(3n+2) {
  margin-right: 20px;
}
```
---
<strong>example SCSS</strong>
```SCSS
element {
  @include omega('&:nth-of-type(3n+1)');
}
```
<strong>example CSS</strong>
```CSS
.element:nth-of-type(3n+1) {
  margin-right: 20px;
}
```
---
<strong>example SCSS</strong>
```SCSS
.element {
  @include flex-omega;
}
```
<strong>example CSS</strong>
```CSS
.element {
  margin-right: 20px;
}
```

## omega-flex
`@include omega-flex($selector: null, $grid: $neat-grid)`
- Adds a margin right to the specified object, or if auto, to the last child of the grid.
<strong>example SCSS</strong>
```SCSS
@include flex-omega('.element:nth-of-type(3n+2)');
```
<strong>example CSS</strong>
```CSS
@example css - CSS Output
.element:nth-of-type(3n+2) {
  margin-right: 20px;
}
```
---
<strong>example SCSS</strong>
```SCSS
.element {
  @include flex-omega('&:nth-of-type(3n+1)');
}
```
<strong>example CSS</strong>
```CSS
@example css - CSS Output
.element:nth-of-type(3n+1) {
  margin-right: 20px;
}
```
---
<strong>example SCSS</strong>
```SCSS
.element {
  @include flex-omega(auto);
}
```
<strong>example CSS</strong>
```CSS
@example css - CSS Output
.element:last-child {
  margin-right: 20px;
}
```
## nth-omega
`@include nth-omega($selector, $grid: $neat-grid)`
- Adds a margin right to the specified `nth-of-type` object, and clears the `nth+1` object. Note that composite arguments such as `2n+1` are not supported by this mixin.

<strong>example SCSS</strong>
```SCSS
.nth-element {
  @include nth-omega(4n);
}
```
<strong>example CSS</strong>
```CSS
.nth-element:nth-child(4n) {
  margin-right: 20px;
}
.nth-element:nth-child(4n+1) {
  clear: left;
}
.nth-element:last-child {
  margin-right: 20px;
}
```
