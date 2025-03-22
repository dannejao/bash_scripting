#!/bin/bash
prompt_user () {
        message=${1:-"Enter the account details: "}
        echo "$message"
        read -p "Enter a username: " user_name
        read -sp "Enter a password: " user_password
        echo ""
        read -sp "Enter the password again: " user_password_check
        echo ""
}

check_user () {
  grep -qi \^${1}\: /etc/passwd && return 0
}

create_user () {
  prompt_user "Enter new user detail"
  while check_user "$user_name" ; do
        echo
        prompt_user "The username you have chosen does already exist!, try again!"
  done
  while [ "$user_password" != "$user_password_check" ] ; do
  echo
        prompt_user "Passwords did not match!, re-enter detals: "
  done
  sudo useradd -m -s /bin/bash "$user_name"
  echo "${user_name}:$user_password" | sudo chpasswd
  echo "$user_name created successfully"
}

delete_user () {
  read -p "Enter user to delete: " user_name
  while ! check_user "$user_name" ; do
    echo "User '$user_name' not found. Please try again."
    read -p "Enter user to delete: " user_name
  done

  read -p "Are you sure you want to delete user '$user_name'? (y/n): " confirm
  if [[ "$confirm" == [yY] ]]; then
    sudo userdel -r "$user_name" && echo "User '$user_name' deleted successfully." || echo "Failed to delete user '$user_name'."
  else
    echo "Deletion canceled."
  fi
}
while true ; do
  clear
  echo "user management"
  echo
  echo "1: Create user"
  echo "2: Delete user"
  echo "3: Quit"
  read -sn1
  case "$REPLY" in
    1) create_user;;
    2) delete_user;;
    3) exit 0;;
  esac
  read -n1 -p "Press any key to continue"
done
