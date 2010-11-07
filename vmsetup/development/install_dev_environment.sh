if [ ! -f ~/.ssh/id_rsa ] || [ ! -f ~/.ssh/id_rsa.pub ]
then
    echo please install the ssh keys to retrieve the git repo from git hub, then run this tool once more
    exit
fi

sudo apt-get update

sudo apt-get install vim -y

sudo apt-get install git-core -y 

mkdir ~/Documents/development 
cd ~/Documents/development

git clone git@github.com:camswords/Bokkas-Hair-Dressing.git
