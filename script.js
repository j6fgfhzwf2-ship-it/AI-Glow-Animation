const c = document.getElementById("glow");
const ctx = c.getContext("2d");

function resize() {
    c.width = window.innerWidth;
    c.height = window.innerHeight;
}

resize();
window.onresize = resize;

let t = 0;

function draw() {
    t += 0.02;

    ctx.clearRect(0, 0, c.width, c.height);

    const r = 200 + Math.sin(t) * 40;

    const gradient = ctx.createRadialGradient(
        c.width/2, c.height/2, 0,
        c.width/2, c.height/2, r
    );

    gradient.addColorStop(0, "rgba(0,150,255,0.8)");
    gradient.addColorStop(1, "rgba(150,0,255,0)");

    ctx.fillStyle = gradient;
    ctx.fillRect(0, 0, c.width, c.height);

    requestAnimationFrame(draw);
}

draw();

