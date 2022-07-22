# roblox-vulnerable-remote-events
Detect common vulnerable remote events

## Submit a vulnerable remote
1. Make a file named after the remote.
	- Ensure the file has no file extension
	- If there are any spaces, denote them with a dash (ex: My Remote -> My-Remote)
2. Use the format below to properly write your submission:
```
{
    "Name": "Remote Name",
    "Description": "
    "Alias": {},
    "Blacklist": {},
}
```

**Name**
This field will contain the name of the remote.
**Description**
This field will contain the information which regards why the remote is/was vulnerable.
**Alias**
This will contain aliases for the remote in-case of any renaming that occurs.
**Blacklist**
This will contain games that have patched this remote and should be ignored in the scan.

3. In the **`proof-of-concepts`** folder, make a `.lua` file with the same name as the previous file.
	- Paste in your Proof of Concept code which makes this remote vulnerable.