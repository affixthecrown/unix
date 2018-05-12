source ~/.bashrc
PATH=~/.rbenv/shims:~/go/bin:$PATH:~/bin


source ~/.ajrwebpresence

function start-postgres(){
  pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
}

export IT="http://localhost:3000"

function photo-upload() {
  curl -X POST -H "X_MNEMO_VERSION: v1" -b ~/cookie.jar --data-urlencode "image=asjfbiweunqerbferuybg" $IT/data
}

function bruh(){
  git branch | grep '*' | sed -e 's/\*//g' | sed -e 's/ //g'
}

function and-pickup-your-fucking-skateboard(){
  printf "Y to delete the branch...\n\n";
  for i in $(git branch | grep affix); do
    echo $i;
    read dec;
    if [ $dec = 'y' ]; then
      git branch -D $i;
    else
      echo "moving on..."
    fi
  done
}

export PATH=/opt/gradle-4.4/bin:$PATH

export PI=192.168.0.19
export BOAT_PI=192.168.1.38

export A=alfa
export B=bravo
export C=charlie
export D=delta
export E=echo
export F=foxtrot
export G=golf
export H=hotel
export I=india
export J=juliett
export K=kilo
export L=lima
export M=mike
export N=november
export O=oscar
export P=papa
export Q=quebec
export R=romeo
export S=sierra
export T=tango
export U=uniform
export V=victor
export W=whiskey
export X=x-ray
export Y=yankee
export Z=zulu

#some android tools
export PATH=$PATH:~/Library/Android/sdk/platform-tools

function console-prod() {
  heroku run 'rails c' -a mnemoapp
}

function console-staging() {
  heroku run 'rails c' -a mnemodev
}
