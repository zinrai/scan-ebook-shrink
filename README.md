# scan-ebook-shrink

A shell script to compress scanned PDF ebooks using Ghostscript.

## Overview

This script is designed specifically for compressing PDF files that you've created yourself, typically from scanned books or documents. It uses Ghostscript's `/ebook` optimization settings to reduce file size while maintaining readability on e-readers and other devices.

## Features

- Compresses PDF files using Ghostscript's ebook optimization
- Handles filenames with spaces and special characters
- Processes multiple files in batch
- Adds "ebook-" prefix to output files to distinguish from originals

## Prerequisites

**Ghostscript** must be installed on your system.

Ubuntu/Debian:

```bash
$ sudo apt install ghostscript
```

## Usage

Basic Usage:

```bash
$ ./scan-ebook-shrink.sh input.pdf
```

Process Multiple Files:

```bash
$ ./scan-ebook-shrink.sh file1.pdf file2.pdf file3.pdf
```

Process All PDFs in Current Directory:

```bash
$ ./scan-ebook-shrink.sh *.pdf
```

## Output

The script creates optimized files with the "ebook-" prefix. For example:
- Input: `My Scanned Book.pdf`
- Output: `ebook-My Scanned Book.pdf`

## License

This project is licensed under the [MIT License](./LICENSE).
