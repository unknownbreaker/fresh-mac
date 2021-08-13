#!/bin/bash

SYSPREF_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )/system-preferences/plist/"

cp ~/Library/Preferences/com.apple.systempreferences.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.apple.dock.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.apple.dock.extra.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.google.Chrome.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.googlecode.iterm2.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.googlecode.iterm2.private.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.surteesstudios.Bartender.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.stairways.keyboardmaestro.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.stairways.keyboardmaestro.editor.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.stairways.keyboardmaestro.engine.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.techsmith.SnagitRecorder2021.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.techsmith.snagit.capturehelper2021.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.TechSmith.Snagit2021.plist $SYSPREF_DIR
cp ~/Library/Preferences/md.obsidian.plist $SYSPREF_DIR
cp ~/Library/Preferences/org.mozilla.firefox.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.apple.finder.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.bjango.istatmenus.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.bjango.istatmenus.status.plist $SYSPREF_DIR
cp ~/Library/Preferences/com.bjango.istatmenus6.extras.plist $SYSPREF_DIR
