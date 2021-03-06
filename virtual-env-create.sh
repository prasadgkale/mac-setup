#@IgnoreInspection BashAddShebang

# Remember to deactivate old environment before running this script.

set -e

sudo -H pip install --upgrade pip

sudo -H pip install virtualenv

export ENV_NAME=python_env

cd $HOME

if [ -d $ENV_NAME ]
then
    mv $ENV_NAME ${ENV_NAME}.old
fi


virtualenv -p /usr/local/bin/python3 $ENV_NAME

source $HOME/$ENV_NAME/bin/activate

pip install -r $HOME/dev/mac-setup/pip-requirements.txt

which ansible

ansible --version

which python

python --version
