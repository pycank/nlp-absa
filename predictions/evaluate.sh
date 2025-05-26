#!/bin/bash

# Directory of the script
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

# Path to the Java evaluation file
EVALUATOR="SAEvaluate.java"

# Ensure the Java evaluator exists
if [ ! -f "$SCRIPT_DIR/$EVALUATOR" ]; then
    echo "Evaluator file $EVALUATOR not found in $SCRIPT_DIR."
    exit 1
fi

# Find all folders containing both predictions.txt and labels.txt
find "$SCRIPT_DIR" -mindepth 2 -maxdepth 2 -type d | while read -r folder; do
    if [ -d "$folder" ] && [ -f "$folder/predictions.txt" ] && [ -f "$folder/labels.txt" ]; then
        echo "Processing folder: $folder"

        # Define paths to input files and result file
        pred_file="$folder/predictions.txt"
        label_file="$folder/labels.txt"
        result_file="$folder/results.txt"

        # Run the evaluator and save results
        java "$SCRIPT_DIR/$EVALUATOR" "$label_file" "$pred_file" > "$result_file"

        echo "Evaluation completed. Results saved to $result_file"
    else
        echo "Skipping folder: $folder (missing prediction.txt or label.txt)"
    fi
done