$file=$args[0]
If (-not $file) {
    echo "Please provide a file to query"
    exit 1
}

echo "Counting words in $file"
$result = pdftotext $file - | Measure-Object -Word
$wordCount = $result.Words
echo "Result: $wordCount"