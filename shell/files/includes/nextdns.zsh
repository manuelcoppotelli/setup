function nextdns() {
    curl -sSfL https://link-ip.nextdns.io/xxxxxx/yyyyyyyyyyyyyyyy;
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
}
