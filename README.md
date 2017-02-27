Thanks for ferhung, fire855 & superdragonpt, who are contributing to the working CyanogenMod of MTK hardware(MT6592&MT6582).

This is a device tree for Micromax A102, which is based on MT6572 SoC.

This device tree is build by Aditya Kumar.
# Build

* init
  Sync CyanogenMod source modified for MT65** SoC:

        # repo init -u git://github.com/aditya6572/android.git -b cm-13.0

        # repo sync


* full build
        
        # source build/envsetup.sh

        # brunch cm_A102-userdebug
# Limitations

  Services requires root:

        # system/core/rootdir/init.rc

* surfaceflinger depends on sched_setscheduler calls, unable to change process priority from 'system' user (default user 'system')

* mediaserver depends on /data/nvram folder access, unable to do voice calls from 'media' user (default user 'media')
