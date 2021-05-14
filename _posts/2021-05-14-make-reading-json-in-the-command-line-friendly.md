---
title: "Everyday Carry: Make Reading JSON in the Command Line Friendly"
excerpt: "I don't know why it took so long for me to discover jq, but now I can't live without it."
image: "/img/jq-the-office.png"
image_credit: "The Office API being parsed by JQ"
---

I little while ago, I stumbled upon someone using [jq](https://stedolan.github.io/jq/){:target="_blank"} in a coding video, and I was blown away. Something so simple, yet so game-changing.
If you've ever struggled reading long, complex JSON strings from API responses via **curl** or log files, then you might benefit from installing **jq**. [Installation instructions](https://stedolan.github.io/jq/download/){:target="_blank"} are available for most operating systems and distros.

The most basic usage of **jq** is to make JSON output pretty, but there are plenty of other progressively more complex ways you can use the command to reformat and restructure your JSON data:

## Examples

#### Make Things Pretty

Here's a basic way to make JSON output from an API more readable.

##### INPUT

```bash
curl 'https://www.officeapi.dev/api/characters' | jq
```

##### OUTPUT

```json
{
  "data": [
    {
      "_id": "5e93b4a43af44260882e33b0",
      "firstname": "Michael",
      "lastname": "Scott",
      "__v": 0
    },
    {
      "_id": "5e93b4f03af44260882e33b1",
      "firstname": "Jim",
      "lastname": "Halpert",
      "__v": 0
    },
    {
      "_id": "5e93b4fa3af44260882e33b2",
      "firstname": "Dwight",
      "lastname": "Schrute",
      "__v": 0
    },
    {
      "_id": "5e93b50a3af44260882e33b3",
      "firstname": "Pam",
      "lastname": "Beesly",
      "__v": 0
    },
    {
      "_id": "5e93b5183af44260882e33b4",
      "firstname": "Ryan",
      "lastname": "Howard",
      "__v": 0
    },

    ...

  ]
}

```

#### Pluck Just What You Need

The syntax for selecting data from a JSON object should look pretty similar if you are used to dealing with JSON using Javascript. In this example, we can pass in some formatting options as an argument to select `firstname` and `lastname` attributes as a new `fullname` attribute. Pretty freaking cool, right?

##### INPUT

```bash
curl 'https://www.officeapi.dev/api/characters' | jq '.data[] | {fullname: "\(.firstname) \(.lastname)"}'
```

##### OUTPUT
```bash
{
  "fullname": "Michael Scott"
}
{
  "fullname": "Jim Halpert"
}
{
  "fullname": "Dwight Schrute"
}
{
  "fullname": "Pam Beesly"
}
{
  "fullname": "Ryan Howard"
}

...

```

## So Much More

There are a million other examples and a full manual for methods and formatting options in the [jq tutorial](https://stedolan.github.io/jq/tutorial/){:target="_blank"} and [jq manual](https://stedolan.github.io/jq/manual/){:target="_blank"}!