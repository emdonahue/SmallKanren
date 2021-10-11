# SmallKanren: Logic Programming in Pharo Smalltalk

SmallKanren is an implementation of the miniKanren relational logic programming language for Pharo Smalltalk. miniKanren has found application in a variety of areas including [program synthesis](https://github.com/emdonahue/Barliman), proof assistants, [semantic parsing](https://github.com/emdonahue/CCG), and [rule-based systems](https://github.com/emdonahue/Fiat). SmallKanren possesses an extensible constraint system, a debugger, tabled relations, and guarded fresh goals.

## Installation

```smalltalk
Metacello new
	baseline: 'SmallKanren';
	repository: 'github://emdonahue/SmallKanren';
	load.
```

## Quick Start

This guide is intended for those already familiar with miniKanren.

## Fresh and Unification

Logic variables in SmallKanren are defined implicitly by the parameters of blocks. The code:

```smalltalk
[ :x | x === 1 ] asGoal run first. "(1)"
```

Creates a SmallKanren goal that initializes the logic variable `x` and unifies it with `1`, runs that goal to produce a lazy stream of answers, and then selects the first answer. That answer is a list of assignments to the logic variables, in this case the 1-length list representing the assignment of `1` to `x`.

## Lists

SmallKanren uses the [Cons](https://github.com/emdonahue/Cons) library for Scheme and Lisp-style pairs and lazy lists:

```smalltalk
[ :x | x === (1 cons: 2 cons) ] asGoal run first. "((1 2))"
```

Unifies `x` with the list `(1 2)` (`2 cons` creates the singleton list `(2)` and `1 cons:` appends `1` to it).

## Conjunction and Disjunction

`&` and `|` are the basic logical operators "and" and "or":

```smalltalk
[ :x :y | (x === 1) & (y === 2) ] asGoal run first. "(1 2)"
```

Returns the answer representing the simultaneous assignment of `1` to `x` and `2` to `y`.

```smalltalk
[ :x | (x === 1) | (x === 2) ] asGoal run force. "((2) (1))"
```

Returns the list of two answers, the first representing the assignment of `x` to `1`, and the second representing the alternative assignment of `x` to `2`.

```smalltalk
[ :x | (x === 1) & (x === 2) ] asGoal run force. "()"
```

Returns the empty list, as there are no possible assignments to `x` that satisfy both `x = 1` and `x = 2`.

An array notation may be used to more easily express multiple conjunctions or disjunctions.

```smalltalk
[ :x :y | {x === 1. y === 2} ] asGoal run first. "(1 2)"
```

Arrays of goals implicitly conjoin the goals with `&`.

```smalltalk
[ :x | {x === 1. x === 2} conde ] asGoal run force. "((2) (1))"
```

Arrays respond to the `conde` message, which disjoins their goals using `|`. 

## Constraints

### Disequality

`=/=` represents a disequality constraint:

```smalltalk
[ :x |{x === 1. x =/= 1} ] asGoal run force. "()"
```

There are no satisfying assignments because `x` cannot both be `1` and not `1`.

### Type

`isSymbolo` and `isNumbero` assert that a variable is of the relevant type:

```smalltalk
[ :x |{x === 1. x isSymbolo} ] asGoal run force. "()"
```

Returns no assignments because `x` cannot both be `1` and be a symbol.

### Absento

`absento:` fails if a variable is equal to a ground term or if it is a pair that recursively contains a given ground term anywhere in its subterms:

```smalltalk
[ :x |{x === (1 cons: 2). x absento: 1} ] asGoal run force. "()"
```

Fails because `x` is a pair that contains `1`. 

## Guarded Fresh

SmallKanren contains a form specific to itself called "guarded fresh." This form is explained in more detail in [this](http://www.evandonahue.com/research/donahue_guarded2021.pdf) paper. This form combines the fresh and unification operations:

```smalltalk
[ :x | x match: #(1 . _) o: [ :cdr | cdr === 2 ] ] asGoal run first. "((1 . 2))"
```

The variable `x` is "matched" against (unified with) the pattern `#(1 . _)`, which represents the pair of the constant `1` and a fresh logic variable represented by `_`, eg `(1 . _)`. The newly instantiated logic variable is passed as the :cdr argument to the block, where it is then unified with `2`. 

This form is often more convenient to write than the corresponding fresh block and unification operations, but more importantly it allows the runtime to make a number of important optimizations, and so it is recommended to use this style in general when unifying with a complex term.

# Roadmap

- Clean up implementation for initial release
- Document the language more completely
- Replace alist-based substitution with Skew Binary Random Access List

SmallKanren is intended to be a fully featured logic programming environment for Pharo Smalltalk, similar to core.logic in the Clojure community (which rests on the same underlying miniKanren language). The current implementation is stable and usable for practical logic programming purposes, albeit it is still under active development. Although not yet documented, several more advanced features such as tabling and debugging are usable in the current implementation as well.
