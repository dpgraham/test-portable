for packageJson in $(find . | grep "./[A-z0-9]*/package.json$")
do
    echo "* Running NPM test at $packageJson/../"
    npm --prefix $packageJson/../ test $packageJson/../
done