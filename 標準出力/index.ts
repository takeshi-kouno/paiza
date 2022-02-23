import { readFileSync } from "fs";

const input = readFileSync("/dev/stdin", "utf8").trim();
const [_, ...info] = input.split("\n");

type Member = {
  name: string;
  age: number;
};

const members: Member[] = info.map((i) => {
  const [name, age] = i.split(" ");
  return { name, age: Number(age) };
});

const agedMembers: Member[] = members.map((m) => {
  return { name: m.name, age: m.age + 1 };
});

agedMembers.forEach((m) => {
  console.log(`${m.name} ${m.age}`);
});
