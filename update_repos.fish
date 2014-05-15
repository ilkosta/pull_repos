function update_repos
	set -l start_dir $PWD

  for p in (find . -type d -name .git)
  	cd $p
  	cd ..
  	git remote show origin | grep http >/dev/null
  		and echo '---------------------------------------------'
  		and echo "update $PWD"
  		and echo '---------------------------------------------'
  		and git pull
  	cd $start_dir
  end
end