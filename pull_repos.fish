function pull_repos
	set -l start_dir $PWD

  for p in (find . -type d -name .git)
  	cd $p
  	cd ..
    echo '---------------------------------------------'
    echo "- checking $PWD"
  	git remote show origin | grep http >/dev/null
  		
  		and echo " *** update $PWD"
  		
  		and git pull
  	cd $start_dir
    and echo '---------------------------------------------'
  end
end