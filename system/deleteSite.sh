deleteSite ()
{
  stopSite $1
  if isMac
    then
      sudo rm -rf $SITESPATH/$1
    else
      sudo rm -rf $SITESPATH/$1
      sudo deluser $1
      sudo delgroup $1
      sudo rm -rf /home/$1
  fi
}

