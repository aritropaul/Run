cp run.sh ~/run.sh
echo "alias run='sh ~/run.sh'" >> ~/.bash_profile
echo "alias unrun='rm ~/run.sh;awk '!/run/' ~/.bash_profile > temp && mv temp ~/.bash_profile;source ~/.bash_profile'" >> ~/.bash_profile
source ~/.bash_profile