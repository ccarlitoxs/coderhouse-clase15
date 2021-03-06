

server {
    listen 80;
    listen [::]:80;
    server_name localhost

    location / {
        proxy_pass http://localhost:8080
        proxy_http_version 1.1
        proxy_set_header Upgrade $http_upgrade
        proxy_set_header Conecction 'upgrade'
        proxy_set_header Host $host
        proxy_cache_bypass $http_upgrade
    }

    location /api {
        proxy_pass http://localhost:8081
        proxy_http_version 1.1
        proxy_set_header Upgrade $http_upgrade
        proxy_set_header Conecction 'upgrade'
        proxy_set_header Host $host
        proxy_cache_bypass $http_upgrade
    }
}