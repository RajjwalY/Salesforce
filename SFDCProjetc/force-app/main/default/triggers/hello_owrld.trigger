trigger hello_owrld on Account (before insert) {
    system.debug('hello owrld');
    system.debug(trigger.new);

}