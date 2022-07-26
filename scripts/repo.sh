#!/bin/bash
basename -s .git `git config --get remote.origin.url`
