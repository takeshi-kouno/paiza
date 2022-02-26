import { readFileSync } from "fs";

const input = readFileSync("/dev/stdin", "utf8").trim();
const [_, ...info] = input.split("\n");

type Time = {
  hour: number;
  min: number;
};

type Schedule = {
  start: Time;
  work: Time;
};

const schedules: Schedule[] = info.map((i) => {
  const startInfo = i[0].split(":").map((t) => +t);

  const start: Time = { hour: startInfo[0], min: startInfo[1] };
  const work: Time = { hour: +info[0], min: +info[1] };

  return { start: start, work: work };
});

const finishTimeList: Time[] = schedules.map(({ work, start }) => {
  const tmpFinishTime: Time = {
    hour: start.hour + work.hour,
    min: start.min + work.min,
  };

  // 時刻の繰り上げ計算
  const carry = Math.floor(tmpFinishTime.min / 60);
  if (carry) {
    return {
      hour: (tmpFinishTime.hour + carry) % 24,
      min: tmpFinishTime.min - carry * 60,
    };
  }

  return tmpFinishTime;
});

const zeroPadding = (time: number) => {
  return time.toString().padStart(2, "0");
};

finishTimeList.forEach(({ hour, min }) => {
  const answer = `${zeroPadding(hour)}:${zeroPadding(min)}`;
  console.log(answer);
});
