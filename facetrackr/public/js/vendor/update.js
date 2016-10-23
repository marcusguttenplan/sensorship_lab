const lastTime = Date.now();
const N = 24;

function update() {
    requestAnimationFrame(update);

    // refresh only N times per second
    if (Date.now() - lastTime < 1000 / N) {
        return;
    }

    // do some calculations
};
