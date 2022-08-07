# Easy-Masm Replit Installation

You can install Easy-Masm on Replit by creating a new `"Blank Repl"`, then going to the console or shell of that repl and running the following command:

```bash
curl -o- https://raw.githubusercontent.com/jere-mie/easy-masm/replit-install/install-replit.sh | bash
```

Edit your `.asm` files by copying the `src/source.asm` file. Make sure all files are in the `src` directory!

You can run the sample `source.asm` file by clicking the green "run" button at the top. If you want to run a different file, edit the `.replit` file:

Change this:

```bash
run = "chmod +x run.sh && ./run.sh source"
```

To this:

```bash
run = "chmod +x run.sh && ./run.sh newFile"
```

Where "newFile" corresponds to a "newFile.asm" file in the `src` directory.

*NOTE*: If you can't see the `.replit` file, click the three dots at the top right of the "files" tab and select "show hidden files".
