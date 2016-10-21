correlation(curData, oldData, minCorrelation) {
    const sampledDataWidth = 80;
    const sampledDataHeight = 60;
    let count = 0;
    const total = curData.data.length;
    for (let i = 0; i < total; i += 4) {
        // sampling the R channel, since the images are grayscaled and threshold samplying any of the channels will give the same results.
        if (curData.data[i] !== oldData.data[i]) {
            count++;
        }
    }

    const correlation = count / (sampledDataWidth * sampledDataHeight);

    if (correlation > minCorrelation) {
        //  blink detected
    }
    return correlation;
}
