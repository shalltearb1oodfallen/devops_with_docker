while true
do
  echo "Input website:"
  read website; 
  
  if [ "$website" = "stop" ]; then
    break
  fi
  
  echo "Searching.."
  sleep 1; 
  curl http://$website
done