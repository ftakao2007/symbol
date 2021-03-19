### only init
# test
symbol-bootstrap config -p mainnet -a dual -c my-preset.yml
# main
symbol-bootstrap config -p mainnet -a dual -c my-preset.yml

symbol-bootstrap compose

### start
symbol-bootstrap start -d

### stop
symbol-bootstrap stop

### decrypt
symbol-bootstrap decrypt --source target/addresses.yml --destination add.yml
### 普段使っているアカウントでウォレットにログインして「アカウント」から秘密鍵を入力して操作する

### encrypt
symbol-bootstrap encrypt --source add.yml --destination address_new.yml
