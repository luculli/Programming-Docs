#!/bin/sh

# Take screenshot(s) in Qubes Dom0 and copy to AppVM
# Dependencies: scrot (sudo qubes-dom0-update scrot)
# My KDE shortcuts:
# Meta-C       : qvm-screenshot.sh -s -n
# Meta-Shift-C : qvm-screenshot.sh -s -n -m
# Meta-Alt-C   : qvm-screenshot.sh -s -q
# 2013, Laurent Ghigonis <laurent@p1sec.com>

# Modified 2015, Joe Ruether <jrruethe@gmail.com>

DOM0_SHOTS_DIR=$HOME/Pictures
APPVM_SHOTS_DIR=/home/user/Pictures
QUBES_DOM0_APPVMS=/var/lib/qubes/appvms/

usage() {
   echo "$program [-hlmqs]"
   echo -e "\t-m : take multiple shots"
   echo -e "\t-n : after screenshot, run nautilus in AppVM"
   echo -e "\t-q : only take screenshot, no blabla"
   echo -e "\t-s : select window"
}

program="`basename $0`"
mode_multi=0
mode_nautilus=0
mode_select=0
opts="$(getopt -o hmnqs -n "$program" -- "$@")"
err=$?
eval set -- "$opts"
while true; do case $1 in
   -h) usage; exit 1 ;;
   -q) mode_quick=1; shift ;;
   -m) mode_multi=1; shift ;;
   -n) mode_nautilus=1; shift ;;
   -s) mode_select=1; shift ;;
   --) shift; break ;;
esac done
[[ $err -ne 0 ]] && usage && exit 1

shotslist=""
mkdir -p $DOM0_SHOTS_DIR ||exit 1
while true; do
   d=`date +"%Y%m%d%H%M%S"`
   shotname=$d.png
   if [ $mode_select -eq 1 ]; then
      echo "[-] making shot, click on a window"
      scrot $@ -s -b $DOM0_SHOTS_DIR/$shotname ||break
   else
      echo "[-] making shot of root window"
      scrot $@ $DOM0_SHOTS_DIR/$shotname ||break
   fi
   [[ $mode_quick -eq 1 ]] && exit 1

   echo "[-] saving $DOM0_SHOTS_DIR/$shotname"
   mv $DOM0_SHOTS_DIR/$tmpname $DOM0_SHOTS_DIR/$shotname

   shotslist="${shotslist}${shotname}:"

   [[ $mode_multi -eq 1 ]] && kdialog --yesno "Other shot ?" || break
done

choice=`ls $QUBES_DOM0_APPVMS |sed 's/\([^ ]*\)/\1 \1/g'`
appvm=`kdialog --menu "Select destination AppVM" $choice --title "$program"`

if [ X"$appvm" != X"" ]; then
   if [ $mode_nautilus -eq 1 ]; then
      echo "[-] running nautilus in AppVM"
      qvm-run $appvm "nautilus $APPVM_SHOTS_DIR"
   fi

   echo "[-] copy to AppVM $appvm"
   qvm-run $appvm "mkdir -p $APPVM_SHOTS_DIR"
   IFS=":"; for shot in $shotslist; do
      echo "[-] copying $APPVM_SHOTS_DIR/$shot"
      cat $DOM0_SHOTS_DIR/$shot \
         |qvm-run --pass-io $appvm "cat > $APPVM_SHOTS_DIR/$shot"
      rm -f $DOM0_SHOTS_DIR/$shot
   done
else
   echo "no AppVM name provided"
fi

echo "[*] done"

