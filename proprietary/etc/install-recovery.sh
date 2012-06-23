#!/system/bin/sh
if ! applypatch -c MTD:recovery:2048:3fbc55350f81174b1d9fde077fdc0ef1f0cba861; then
  log -t recovery "Installing new recovery image"
  applypatch MTD:boot:8388608:0977360f6508e5a7f90662668b3393cb5734ca6c MTD:recovery ab6439df9e94a05228df214539a43bcf5b4693eb 9437184 0977360f6508e5a7f90662668b3393cb5734ca6c:/system/recovery-from-boot.p
else
  log -t recovery "Recovery image already installed"
fi
