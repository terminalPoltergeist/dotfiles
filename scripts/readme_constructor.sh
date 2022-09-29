#!/bin/bash
rm ~/dotfiles/docs/out.md;
cat ~/dotfiles/docs/part1.md > ~/dotfiles/docs/out.md;
cat ~/dotfiles/todo.md >> ~/dotfiles/docs/out.md;
cat ~/dotfiles/docs/part2.md >> ~/dotfiles/docs/out.md;
cp ~/dotfiles/docs/out.md ~/dotfiles/README.md;
