# setsshkey.sh
# Adapted from http://www.linuxproblem.org/art_9.html

MYNAME="foo"
SERVERS="bar\
         baz"
        
for server in $SERVERS
do
    ssh ${MYNAME}@${server} mkdir -p .ssh
    cat ~/.ssh/id_rsa.pub | ssh ${MYNAME}@${server} 'cat >> .ssh/authorized_keys'
done


