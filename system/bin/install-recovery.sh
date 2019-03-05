#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery:20546432:b689e8c6725d140a569109795893fbaab9611a21; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/boot:10640256:261395364f616f5510a355ae741251bf428f53da EMMC:/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/recovery b689e8c6725d140a569109795893fbaab9611a21 20546432 261395364f616f5510a355ae741251bf428f53da:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
