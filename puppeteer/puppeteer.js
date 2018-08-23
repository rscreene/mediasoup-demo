const puppeteer = require("puppeteer");

const ROOM_ID = process.env.ROOM_ID || "ROOM1";

(async () => {
  const browser = await puppeteer.launch({
    executablePath: "google-chrome-unstable",
    dumpio: true,
    //headless: false,
    args: [
      "--use-fake-device-for-media-stream",
      "--use-fake-ui-for-media-stream",
      "--disable-dev-shm-usage",
      "--no-sandbox",
      "--disable-setuid-sandbox",
      "--ignore-certificate-errors"
    ],
    ignoreHTTPSErrors: true
  });

  const page = await browser.newPage();

  await page.goto(`https://${process.env.APP_ADDRESS}/?roomId=${ROOM_ID}`);

  await page.waitFor(60000);
  await browser.close();
})();
