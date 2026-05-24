# See all environment variables
printenv
env

# Common ones you'll always see
echo $HOME        # /home/username
echo $USER        # current username
echo $PATH        # where bash looks for commands
echo $SHELL       # path to current shell
echo $PWD         # current directory

# export makes a variable available to child processes
API_KEY="abc123"
export API_KEY

# Or in one line:
export DB_HOST="db.prod.internal"

# In DevOps: environment variables are how you pass secrets to apps
# Never hardcode passwords — use environment variables!

