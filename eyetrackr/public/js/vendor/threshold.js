threshold(pixels, threshold) {
    const d = pixels.data;
    for (let i = 0; i < d.length; i += 4) {
        const r = d[i + 0];
        const g = d[i + 1];
        const b = d[i + 2];
        let v = 0;
        if ((r + g + b) > threshold) {
            v = 255;
        }
        d[i + 0] = d[i + 1] = d[i + 2] = v;
    }
    return pixels;
}
