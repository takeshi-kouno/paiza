const input = require("fs").readFileSync("/dev/stdin", "utf8").trim();

const lines = input.split("\n");

const [N, ...memberInfo] = lines;
const memberInfonew = memberInfo.map((member) => {
  var [name, age] = member.split(" ");
  age = Number(age);
  return { name, age };
});

memberInfonew.forEach((member) => {
  console.log(member.name, member.age + 1);
});
