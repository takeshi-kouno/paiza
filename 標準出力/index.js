const input = require("fs").readFileSync("/dev/stdin", "utf8").trim();

const info = input.split("\n");

const membersList = info.slice(1);

const N = parseFloat(info[0]);

membersList.map((list) => {
  const memberInfo = list.split(" ");
  const member = { name: memberInfo[0], age: memberInfo[1] };
  console.log(member["name"], parseFloat(member["age"]) + 1);
});
