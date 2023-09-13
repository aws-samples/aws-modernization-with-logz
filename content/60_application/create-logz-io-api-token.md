---
title: Creating an API Token
chapter: true
---

# Logz.io API Tokens

APIs, or Application Programming Interfaces, are crucial in modern technology. They act as intermediaries between different software systems, providing a structured set of rules, protocols, and tools that enable seamless communication and interaction. APIs also serve as instructors for developers and programmers, offering clear and consistent guidelines, documentation, and examples. This empowers developers to understand and utilize the functionality of various software components. Through APIs, developers gain access to pre-built functionalities, libraries, and resources. This greatly accelerates the development process and promotes code reusability.

In addition to these benefits, APIs also foster innovation and collaboration. They enable developers to build upon existing platforms, integrate diverse systems, and create new applications with ease. This is because APIs provide a common framework for communication. As a result, APIs not only impart knowledge but also promote best practices, standardization, and efficiency in software development. Ultimately, this leads to improved productivity and the creation of more robust, scalable, and interconnected digital ecosystems.

## Create an API Token

API tokens are unique to each account. The only exception is a subset of account configuration operations that must be run with the API token of the main account.

You must have admin permissions for the Logz.io account to view the Manage Tokens page. If you’re not an admin user for the account, consult with an account admin to get the token information.

From your account, go to the **Settings** (bottom left) > Manage Tokens > API tokens tab. of your Operations workspace
It can be reached by selecting Settings > Tools > Manage Tokens.

Set the name to `Workshop API Token` or something that tells the user what the API Token is used for. Then hit add and it will create a token that we will utilize for the remainder of the workshop.

- **Name**: Workshop API Token (or what ever you like)
  ![Logz.io API Token](/images/application/logz-io-application-create-api-token.png)

The token for each account is listed in the table along with the date it was created.

Finally let's save that token and export it to our terminal window that we will be utilizing for the remainder of the workshop.

```bash
export LOGZ_IO_API_TOKEN=00000000-0000000-000000-0000000
echo $LOGZ_IO_API_TOKEN
```

if you utilize the fish shell then you can do:

```bash
set -x LOGZ_IO_API_TOKEN 00000000-0000000-000000-0000000
echo $LOGZ_IO_API_TOKEN
```
