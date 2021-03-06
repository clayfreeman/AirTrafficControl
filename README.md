Air Traffic Control
===================

Air Traffic Control is a mobile substrate extension for iOS 7 (and up) that
prevents `SpringBoard` from presenting the `UIAlertView` that asks you to
disable airplane mode when launching apps.

## Install
To install a pre-made binary of this tweak, add the repository URL
`https://clayfreeman.com/apt/` to Cydia and install the `Air Traffic Control`
package.

## Build
To build this extension manually, make sure you have `theos` setup as per the
instructions at [this](http://iphonedevwiki.net/index.php/Theos/Setup) link.
After `theos` is fully functional, simply type `make package` in the project
root.

## Credit
The core functionality of this tweak was borrowed from
[pNre/NoAnnoyance](http://dpr.clayfreeman.com/1bitM).  At the time of this
tweak's creation, the aforementioned repository crashed `SpringBoard` on iOS 8.
I needed only the Airplane Mode functionality of the tweak, therefore, Air
Traffic Control was born.

Licensing
=========

This work is licensed under the Creative Commons Attribution-ShareAlike 4.0
International License. To view a copy of this license, visit
http://creativecommons.org/licenses/by-sa/4.0/ or send a letter to Creative
Commons, PO Box 1866, Mountain View, CA 94042, USA.
