docker build -f dev.dockerfile -t payroll-api . &&
docker run -p 3000:3000 -v $(pwd):/rails payroll-api