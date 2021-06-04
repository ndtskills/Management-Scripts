#! /bin/bash

echo Usage - create_sql.sh filename parent_id
echo
echo Known parent_ids
echo ================
echo 37 - Diving
echo 40 - NDT
echo 57 - Rope Access
echo 58 - UAV Services
echo 59 - Inspections
echo 60 - Welding
echo

args=("$@")

input="${args[0]}"
pid="${args[1]}"

echo "INSERT INTO `serv_skills` (`id`, `skill_name`, `arabic_skill_name`, `spanish_skill_name`, `swedish_skill_name`, `image`, `parent_id`, `cat_id`, `status`, `show_status`) VALUES"


while IFS= read -r line

do
  echo " (NULL, '$line', '$line', '$line', '$line', '', '$pid', '0', 'Y', 'Y'),"
done < "$input"

echo
echo Note: There is some script issue with incorrectly detecting variables on the INSERT INTO line.  Perhaps just copy the lines from VALUES to the END - and remove last comma!
