#!/usr/bin/env bash

source ./ansi

ansi::blue
echo "This is blue"
echo "Blue and blue and more blue."
ansi::italic
echo $(ansi::bold)
echo "The colors $(ansi::bold)don't automatically reset$(ansi::normal)."
ansi::resetForeground
echo "The color was reset, but italics remain at this point."
ansi::plain

echo "Back to normal."

echo "This is $(ansi::inverse)inverse$(ansi::noInverse) text."

ansi --green "This is running a function"

