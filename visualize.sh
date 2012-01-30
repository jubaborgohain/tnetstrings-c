#!/bin/bash
ragel -V -p lexer.rl -o lexer.dot
dot -Tjpg lexer.dot > lexer.jpg
gnome-open lexer.jpg