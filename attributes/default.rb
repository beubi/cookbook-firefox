default[:firefox]["3"] = {
 :url => "https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/3.6.28/linux-i686/en-US/firefox-3.6.28.tar.bz2",
 :filename => "firefox-3.6.28.tar.bz2",
 :sha => "08f4f0c1addbe6c041d57282ff69b8aee3a9e3b8",
 :firefox_dir => 'firefox'
}

default[:firefox]["24.6.0"] = {
 :url => "https://ftp.mozilla.org/pub/mozilla.org/firefox/releases/24.6.0esr/linux-x86_64/pt-PT/firefox-24.6.0esr.tar.bz2",
 :filename => "firefox-24.6.0esr.tar.bz2",
 :sha => "35e9d570a80c587f5f302cbfa8fbfeba84883acdbe1f5d7cf1776c2453c1c18d9e82fda79f50e130485aa4e5c710779e410529f8cd3b7ffd49f6cdc2b13bf4b7",
 :firefox_dir => 'firefox'
}

default[:firefox]["31.3.0"] = {
 :url => "https://download.mozilla.org/?product=firefox-31.3.0esr-SSL&os=linux64&lang=en-US",
 :filename => "firefox-31.3.0esr.tar.bz2",
 :sha => "efd9ddfcf54299ce34f190bf51abbdc3453e1c9ce9633adbe2b2d2408b02ea2d8316706372117644dd00e528d4a8388c76277e001138e84fd18825a0c849c878",
 :firefox_dir => 'firefox'
}
# http://ftp.mozilla.org/pub/mozilla.org/firefox/releases/31.3.0esr/SHA512SUMS

default[:firefox]["ESR"] = node[:firefox]["31.3.0"]

default[:firefox][:versions] = [ "ESR" ]
