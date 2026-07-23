@echo off
echo ========================================================
echo Building and Running Google Maps Scraper locally via Go...
echo ========================================================

echo 1. Downloading Go dependencies...
go mod download

echo 2. Installing Playwright browser binaries...
go run main.go -install-playwright

echo 3. Building executable...
go build -o google-maps-scraper.exe main.go

echo 4. Running scraper...
.\google-maps-scraper.exe -input example-queries.txt -results results.csv -depth 1 -exit-on-inactivity 3m

echo.
echo Scraping complete! Results saved in results.csv
pause
