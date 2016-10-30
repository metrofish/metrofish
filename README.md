[![Slack Room][slack-badge]][slack-link]

# Metro

[Powerline] prompt optimized for speed and space.

![Metro]

## Install

With [fisherman]

```fish
fisher metro
```

### Configure

You can add the following lines to your `fish` configuration to change how `metro` works:

```fish
set -g theme_display_ruby no        # Disables displaying the current ruby version
set -g theme_display_virtualenv no  # Disables displaying the current virtualenv name
```

## Features

* Git
 * Clean
 ![normal](https://cloud.githubusercontent.com/assets/8317250/15191429/a4ff1c3c-17ef-11e6-9f0e-a627e3bc0998.png)

 * Dirty / Touched
 ![dirty](https://cloud.githubusercontent.com/assets/8317250/15191431/a4fef19e-17ef-11e6-8ac8-4a5baf502aa7.png)

 * Staged
 ![staged](https://cloud.githubusercontent.com/assets/8317250/15191428/a4ff222c-17ef-11e6-9246-29209b1a5b91.png)

 * Staged + Dirty
 ![staged dirty](https://cloud.githubusercontent.com/assets/8317250/15191427/a4fec566-17ef-11e6-821d-7a9dd83d4086.png)

 * Stashed
 ![stash-normal](https://cloud.githubusercontent.com/assets/8317250/15191430/a4ff3730-17ef-11e6-87d8-f3cc999cd080.png)
 ![stash-dirty](https://cloud.githubusercontent.com/assets/8317250/15191499/ea67ee48-17ef-11e6-8fe0-39d256a23c6c.png)
 ![stash-staged](https://cloud.githubusercontent.com/assets/8317250/15191498/ea660fce-17ef-11e6-9511-cbacb4b1305a.png)

 * Unpushed commits (ahead)
 ![ahead](https://cloud.githubusercontent.com/assets/8317250/15193516/38fbd93a-17f9-11e6-845d-0d2da94affb4.png)

 * Unpulled commits (behind)
 ![behind](https://cloud.githubusercontent.com/assets/8317250/15193517/3900003c-17f9-11e6-847a-19590a2ba843.png)

 * Unpulled and unpushed commits (diverged)
 ![diverged](https://cloud.githubusercontent.com/assets/8317250/15193515/38fbc6b6-17f9-11e6-94f7-718dd9e7db85.png)
 ![diverged-staged](https://cloud.githubusercontent.com/assets/8317250/15193513/38fa4296-17f9-11e6-96a0-3c950231afdc.png)
 ![diverged-dirty](https://cloud.githubusercontent.com/assets/8317250/15193514/38fb6284-17f9-11e6-9a7e-2ced70842739.png)

 * Detached HEAD
 ![detached](https://cloud.githubusercontent.com/assets/8317250/15191272/ebb38c86-17ee-11e6-9fec-e14585666467.png)
 ![detached-dirty](https://cloud.githubusercontent.com/assets/8317250/15191612/61111d30-17f0-11e6-9cd1-17c0c7a1867c.png)
 ![detached-staged](https://cloud.githubusercontent.com/assets/8317250/15191610/610c6fec-17f0-11e6-8584-a1c980802d91.png)
 ![detached-staged-dirty](https://cloud.githubusercontent.com/assets/8317250/15191611/610e050a-17f0-11e6-83b0-732b3b133ca3.png)

 * Branch name
 ![branch-clean](https://cloud.githubusercontent.com/assets/8317250/15192427/23415c46-17f4-11e6-8213-1a96c0a47bb8.png)
 ![branch-dirty](https://cloud.githubusercontent.com/assets/8317250/15192428/23420f6a-17f4-11e6-88a9-ffcc630b887d.png)
 ![branch-staged](https://cloud.githubusercontent.com/assets/8317250/15192429/2342da4e-17f4-11e6-9d94-a3e63a5c100e.png)
 ![branch-staged-dirty](https://cloud.githubusercontent.com/assets/8317250/15192426/2340850a-17f4-11e6-9673-590bb40a6a9f.png)

* $status
![exit-stat](https://cloud.githubusercontent.com/assets/8317250/15191932/d166a04a-17f1-11e6-95a2-516609c9a36d.png)

* $CMD_DURATION
 ![duration2](https://cloud.githubusercontent.com/assets/8317250/15192307/93e4cc36-17f3-11e6-97b5-76ecec3339bf.png)
 ![duration](https://cloud.githubusercontent.com/assets/8317250/15192308/93e50b7e-17f3-11e6-89be-2b544a00d1f5.png)

* $status in context
![error-line](https://cloud.githubusercontent.com/assets/8317250/15192238/4c55819e-17f3-11e6-8d01-ae76ee99d194.png)

* Background jobs
![jobs](https://cloud.githubusercontent.com/assets/8317250/15191807/466121be-17f1-11e6-9b16-8f8cec64fce4.png)

* Superpowers (sudo)
![](https://cloud.githubusercontent.com/assets/8317250/15191199/938e3fa6-17ee-11e6-82eb-2cb610955ec3.png)

* Host information
![hostinfo](https://cloud.githubusercontent.com/assets/8317250/15191720/d4cb9778-17f0-11e6-8ba3-39e534c6ee5a.png)
![hostinfo-jobs](https://cloud.githubusercontent.com/assets/8317250/15191845/7fdf8c5a-17f1-11e6-9f83-8a7300421802.png)
![hostinfo-root](https://cloud.githubusercontent.com/assets/8317250/15191719/d4ca4828-17f0-11e6-85cf-4aae34ae068f.png)

## Terminal Settings

* [Metro.terminal]
* [Metro.itermcolors]
* Font: 16pt Source Code Pro Medium
* Non-ASCII Font: 17pt Source Code Pro for [Powerline]

[slack-link]: https://fisherman-wharf.herokuapp.com/
[slack-badge]: https://fisherman-wharf.herokuapp.com/badge.svg

[fisherman]: https://github.com/fisherman/fisherman
[Powerline]: https://github.com/powerline/fonts
[Metro.itermcolors]: Metro.itermcolors
[Metro.terminal]: Metro.terminal
[Metro]: https://cloud.githubusercontent.com/assets/8317250/15256001/3b65a638-197a-11e6-8121-e20184323122.png
