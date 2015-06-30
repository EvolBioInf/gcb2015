file="outfile"
if [ -f "$file" ]
then
    rm "$file"
fi
file="outtree"
if [ -f "$file" ]
then
    rm "$file"
fi
phylip consense<<EOF
$1
y
EOF
mv outfile "$1".cons
