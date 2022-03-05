import { readFileSync } from "fs";

const input = readFileSync("/dev/stdin", "utf8").trim();
const [N, M, K, ...rest] = input.split("\n");

const TARGET_NUM = Number(K);

const points: number[] = rest.map((r) => {
  const selectNumbers = r.split(" ").map((n) => Number(n));

  const point = selectNumbers.filter((n) => {
    return n === TARGET_NUM;
  }).length;

  return point;
});

points.forEach((p) => {
  console.log(p);
});
