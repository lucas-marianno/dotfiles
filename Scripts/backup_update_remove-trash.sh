#!/bin/bash/

#                   echo -e "\e[CODEmText\e[0m"
# 30	Black	          echo -e "\e[30mBlack\e[0m"
# 31	Red	          echo -e "\e[31mRed\e[0m"
# 32	Green	          echo -e "\e[32mGreen\e[0m"
# 33	Yellow	          echo -e "\e[33mYellow\e[0m"
# 34	Blue	          echo -e "\e[34mBlue\e[0m"
# 35	Magenta	          echo -e "\e[35mMagenta\e[0m"
# 36	Cyan	          echo -e "\e[36mCyan\e[0m"
# 37	White	          echo -e "\e[37mWhite\e[0m"

echo -e "\n\e[35mCreating a backup with timeshift\e[0m\n"
sudo timeshift --check

echo -e "\n\e[35mRunning system-wide sync and upgrade\e[0m\n"
sudo pacman -Syu --noconfirm
if [ $? -eq 0 ]; then
  echo -e "\n\e[32mpacman update sucessful!\e[0m\n"
else
  echo -e "\n\e[31mUpdate aborted!!\e[0m"
  echo -e "\e[31mpacman update failed with status code: $?\e[0m\n"
  exit 1
fi

yay -Syu --noconfirm
if [ $? -eq 0 ]; then
  echo -e "\n\e[32myay update sucessful!\e[0m\n"
else
  echo -e "\n\e[32mpacman update sucessful!\e[0m"
  echo -e "\e[31myay update failed with status code: $?\e[0m\n"
  exit 1
fi

echo -e "\n\e[35mDeleting package managers cache\e[0m\n"
yes | sudo pacman -Scc
yes | yay -Scc

echo -e "\n\e[35mRecoursevely deleting any remaining pkg download cache\e[0m\n"
sudo rm -r /var/cache/pacman/pkg/download-*

echo -e "\n\e[35mDeleting trash\e[0m\n"
yes | sudo trash-empty

echo -e "\n\e[32mDONE!!!
- backup created
- system-wide update executed
- cache was cleared
- trash was emptied\e[0m\n"
