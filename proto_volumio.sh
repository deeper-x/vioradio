# 1. fetch all radio by genre
curl http://192.168.0.100/api/v1/browse?uri=radio/byGenre/Blues

# 2. response has items object, select one and pass it in data payload
# items: [
# { "service": "webradio", "type": "webradio", "title": "1.FM - Blues (www.1.fm)", "artist": "MP3 (192 kbps)", "album": "", "icon": "fa fa-microphone", "uri": "http://yp.shoutcast.com/sbin/tunein-station.m3u?id=1803424" }
# ...
# ]
 
curl -i --header "Content-Type: application/json" 192.168.0.100/api/v1/replaceAndPlay --data '{ "service": "webradio", "type": "webradio", "title": "1.FM - Blues (www.1.fm)", "artist": "MP3 (192 kbps)", "album": "", "icon": "fa fa-microphone", "uri": "http://yp.shoutcast.com/sbin/tunein-station.m3u?id=1803424" }'
