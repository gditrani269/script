echo "monta el volumen local: C:\Users\papa\n\desa\react"
echo "en el volumen del docker:"
echo "/home/desa/react"
echo "y mapea el puerto 80 del container en el puerto 8082 de la maquina host"
podman run -v C:\Windows\System32\WindowsPowerShell\v1.0:/mnt/c/Windows/System32/WindowsPowerShell/v1.0 -v C:\Users\papa\n\desa\react:/home/desa/react -it -p 8082:80 debian-react-1.0