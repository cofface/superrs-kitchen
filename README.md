#** SuperR's Kitchen v1.1.6.9 **#
##by SuperR##

##**FEATURES**##

**Extract and create ROM from:**

* Rooted Device  
* Custom Recovery  
* Existing ROM zip  
* system.img/boot.img (and cache.img on Samsung devices)
* system.ext4.tar/boot.img  
* system.ext4.win/boot.emmc.win (including multi-file *.win000, *.win001, etc)  
* Moto and other factory firmware zips containing sparsechunk files  
* cm12 + roms with sparse dat files  
* Zips that contain system.img and boot.img  
* Samsung firmware zips that contain tar.md5 file  
* Official Nexus firmware tgz  
* Official Nexus preview tgz  
* system directory that contains symlinks and boot.img  

**Create flashable zips of many varieties including:**

* Full ROM  
* Switch between set_perm, set_metadata (KitKat+), raw_img, and sparse_dat (Lollipop+)
* Kernel (including init.d if you added it with the kitchen)  
* Recovery  
* Media  
* app, priv-app, and framework  

**Deodex the following:**  

* N Preview ROMs  
* Marshmallow ROMs  
* Lollipop ROMs  
* KitKat and earlier ROMs  

**Root features:**  

* Root/unroot  
* Choose SuperSU zip (add other versions to /tools/root/supersu directory)  
* Choose system OR systemless root for M+ and Samsung 5.1.1 roms  

**Boot features:**

* Unpack/repack boot/recovery img (Big Thanks to @osm0sis for mkbootimg source!!!)  
* Add/remove init.d support
* Add/remove su.d support    
* Add/remove insecure boot  
* Remove dm-verity  
* Remove forceencrypt  
* open_bump.py compatible (download it and add to the tools directory)  

**By-name auto-detection from:**

* Device  
* Existing ROM  
* boot.img  
* kernel.elf  
* **OR**...manually enter it  

**mmcblk auto-detection from:**

* recovery.img  

**Kitchen updater:**

* View the last 3 changelogs when an update is available.  
* git pull if the kitchen was cloned  
* wget zip and extract if kitchen zip was downloaded  
* Option to check for updates when the kitchen starts  

**Create system.img**  
**Device database for mmcblk devices (currently very small, but will grow over time)**  
**Add devices to the assert**  
**Add custom asserts**  
**Zipalign apks**  
**Debloat ROM**  
**Custom Debloat list support**  
**Remove Knox**  
**Add/remove busybox (Big thanks to @osm0sis for his Busybox Installer)**  
**Add/remove user app support (/data/app)**  
**Sign zips**  

##**USAGE:**##

1. Run "superr" from it's location in terminal  
2. Create new project using the menu  
3. Copy ROM zip into the superr_NAME directory of this tool (NAME = the name of your new project).  
   **OR**  
   Copy system.ext4.tar and boot.img into the superr_NAME directory of this tool.  
   **OR**  
   Copy system.ext4.win and boot.emmc.win into the superr_NAME directory of this tool.  
   **OR**  
   Copy system.img and boot.img into the superr_NAME directory of this tool.  
   **OR**  
   Copy official Nexus tgz into the superr_NAME directory of this tool.  
   **OR**  
   Copy Samsung firmware zip into the superr_NAME directory of this tool.  
   **OR**  
   Copy Moto firmware zip into the superr_NAME directory of this tool.  
   **OR**  
   Leave superr_NAME directory empty to extract from rooted device or custom recovery  
4. Extract for new ROM from the Main menu.  
5. Enjoy!  

##**EXAMPLE:**##

In your terminal, type the following where "/home/user/location/" is the directory where the script lives:

```
cd /home/user/location/
./superr
```

**OR**

Double-click the superr file and choose "Run in Terminal" if your OS supports it.

##**DEPENDENCIES:**##

* Java 7 (or higher)
