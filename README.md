![Logo](header.png)

## Description

Automatically swap references from FactoryBot's `create` to `build` in tests to speed up test runs by using in-memory objects (in the sky) rather than hitting the database (down below).

"Design can emerge from mere Order via an algorithmic process that makes no use of pre-existing Mind. Sceptics have hoped to show that at least somewhere in this process a helping hand (more accurately, a helping mind) must have been provided—a skyhook to do some of the lifting."—Daniel Dennett (Darwin's Dangerous Idea: Evolution and the Meanings of Life. p.83)

"It's a horror movie right there on my TV"—Greg Macainsh

## Installation

```shell
$ brew tap thoran/tap
$ brew install thoran/tap/skyhooks
```

## Usage

```shell
$ cd <repo_name>
$ skyhooks
```

## Contributing

1. Fork it: `https://github.com/thoran/skyhooks/fork`
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Create a new pull request

## Todo

1. Use `build_stubbed` in preference to `build` as it is lighter weight.
2. At present this will change all instances of `create` to `build` in a file, such that opportunities to change some instances will be missed. So, use a binary search algorithm within a file, so as to be able to alter those files where some instances of `create` can be swapped out, but not all.
3. Change instances of `build` to `build_stubbed`.
