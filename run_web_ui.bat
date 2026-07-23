@echo off
echo ========================================================
echo Starting Google Maps Scraper Web UI via Docker...
echo ========================================================
echo Web UI will be available at: http://localhost:8080
echo Press Ctrl+C to stop the server.
echo.

docker run -v "%CD%/gmapsdata:/gmapsdata" -p 8080:8080 gosom/google-maps-scraper -data-folder /gmapsdata
pause
