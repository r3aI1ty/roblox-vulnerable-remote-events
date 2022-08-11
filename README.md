# roblox-vulnerable-remote-events
Detect common vulnerable remote events

## **Submitting a vulnerable remote**

### 1. Make a file named after the remote.
- Ensure the file has no file extension
- If there are any spaces, denote them with a dash (ex: My Remote -> My-Remote)

### 2. Use the format below to properly write your submission:
```
"Remote Name":
{
    "Source": {
        "Author": "",
        "Experience ID": 0,
        "Experience Only": false
    },
    "Description": "",
    "Concept Code": "",
    "Alias": {},
    "Blacklist": {}
}
```

#### **Source**
This will contain information about where the remote was found, and who found it.

- **Author**: Username of the person who found the remote
- **Experience ID**: The ID of where the remote was first founded
- **Experience Only**: Does this remote only work in that particular experience?

#### **Description**
This will contain the information which regards why the remote is/was vulnerable.

#### **Concept Code**
This will contain the file name of the concept code of the exploit.

#### **Alias**
This will contain aliases for the remote in-case of any renaming that occurs.

#### **Blacklist**
This will contain games that have patched this remote and should be ignored in the scan.

### 3. In the **proof-of-concepts** folder, make a `.lua` file with the same name as the previous file.
	- Paste in your Proof of Concept code which makes this remote vulnerable.