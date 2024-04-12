#!/bin/bash

touch /app/frontend/config.js
touch /app/frontend/wsConfig.js

echo "const API_URL = '$MY_SITE_SCHEME://$MY_SITE_DOMAIN/api';" > /app/frontend/config.js
echo "export default API_URL;" >> /app/frontend/config.js

echo "const WS_URL = '$WEBSOCKET_SCHEME://$MY_SITE_DOMAIN:443';" > /app/frontend/wsConfig.js
echo "export default WS_URL;" >> /app/frontend/wsConfig.js

exec nginx -g 'daemon off;'