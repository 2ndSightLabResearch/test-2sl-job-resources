echo "This will add a todo.txt file in every empty directory so the directory structure will be stored in GitHub."
echo "Proceed? Enter or ctrl-c to exit"
read ok

cd resources

for file in */ .*/ ; do
	if [[ $file == .* ]]; then continue; fi 
	cd $file
	touch todo.txt
	cd .. 
done
