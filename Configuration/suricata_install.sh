apt -y install libpcre3 libpcre3-dbg libpcre3-dev build-essential autoconf automake libtool libpcap-dev libnet1-dev libyaml-0-2 libyaml-dev zlib1g zlib1g-dev libcap-ng-dev libcap-ng0 make libmagic-dev libjansson-dev libjansson4 pkg-config python-pip libnetfilter-queue-dev libnetfilter-queue1 libnfnetlink-dev libnfnetlink0 vim python wget libnspr4-dev libnss3-dev liblz4-dev rustc cargo net-tools cmake
pip install --upgrade suricata-update yaml
ln -s /usr/local/bin/suricata-update /usr/bin/suricata-update
wget https://www.openinfosecfoundation.org/download/suricata-5.0.3.tar.gz
tar xzf suricata-5.0.3.tar.gz
cd suricata-5.0.3
./configure --enable-nfqueue --prefix=/usr --sysconfdir=/etc --localstatedir=/var
make
make install-full
