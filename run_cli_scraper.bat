@echo off
echo ========================================================
echo Starting Google Maps Scraper CLI via Docker...
echo ========================================================

if not exist "gmaps-output" mkdir gmaps-output

echo Reading queries from example-queries.txt...
docker run -v gmaps-playwright-cache:/opt -v "%CD%/example-queries.txt:/queries.txt:ro" -v "%CD%/gmaps-output:/out" gosom/google-maps-scraper -input /queries.txt -results /out/results.csv -depth 1 -exit-on-inactivity 3m

echo.
echo ========================================================
echo Scraping complete! Results saved in gmaps-output\results.csv
echo ========================================================
pause
