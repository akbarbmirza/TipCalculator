# Pre-work - *TipCalculator*

**TipCalculator** is a tip calculator application for iOS.

Submitted by: **Akbar Mirza**

Time spent: **6** hours spent in total

## User Stories

The following **required** functionality is complete:

* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.
* [x] Settings page to change the default tip percentage.

The following **optional** features are implemented:
* [ ] UI animations
* [ ] Remembering the bill amount across app restarts (if <10mins)
* [ ] Using locale-specific currency and currency thousands separators.
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Add Person count to split the bill properly

## Video Walkthrough

Here's a walkthrough of implemented user stories:

<img src='http://i.imgur.com/KZTg6Zl.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' />

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

+ While building the app, I started redoing the layout and was running into compilation errors where the app wouldn't even load
+ After some investigation, I realized that some of my view elements were expecting references that no longer existed
+ To solve the issue I had to remove those prior references and create new ones

## License

    Copyright 2016 Akbar Mirza

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
