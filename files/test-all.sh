# Run npm test
for packageJson in */package.json
do
    echo "* Running NPM test at $packageJson/../"
    npm --prefix $packageJson/../ test $packageJson/../
done