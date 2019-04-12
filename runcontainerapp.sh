# for NetCore22 app build on Linux/OS X

# cleanup
rm -Rf $(pwd)/NetCore22/output

# publish the app to the output directory
dotnet publish -o $(pwd)/NetCore22/output

docker build -t aspnetcore:v2.2 ./NetCore22/

# run over port 80 for now. Container removed when stopped
# switch to interactive -it and don't remove (no --rm) when long running
 docker run --name core --rm -p 80:80 aspnetcore:v2.2