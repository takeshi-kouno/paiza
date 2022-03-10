const fs = require("fs");

const input = fs.readFileSync("/dev/stdin", "utf-8").trim();

const lines = input.split("\n");
const [N, ...schedule] = lines;

const constructionInformation = schedule.map((time) => {
  let startTime = time.slice(0, 6).split(":").map(Number);
  let workTime = time.slice(6, 11).split(" ").map(Number);

  startTime = {
    hour: startTime[0],
    min: startTime[1],
  };

  workTime = {
    hour: workTime[0],
    min: workTime[1],
  };

  return { start: startTime, work: workTime };
});

const upwardmoveTime = constructionInformation.map((time) => {
  let totalHour = time.start.hour + time.work.hour;
  let totalMin = time.start.min + time.work.min;

  totalHour = (totalHour + Math.floor(totalMin / 60)) % 24;
  totalMin = totalMin % 60;

  return [totalHour, totalMin];
});

const addzeroTime = upwardmoveTime.map((time) => {
  [totalHour, totalMin] = time;

  totalHour = String(totalHour);
  totalMin = String(totalMin);

  if (totalHour.length === 1) {
    totalHour = `0${totalHour}`;
  }

  if (totalMin.length === 1) {
    totalMin = `0${totalMin}`;
  }

  return `${totalHour}:${totalMin}`;
});

addzeroTime.forEach((endTime) => {
  console.log(endTime);
});
