<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width,initial-scale=1"/>
<title>DRIP — Fresh Fits. Wild Deals.</title>
<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=Anybody:wght@300;400;600&display=swap" rel="stylesheet"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css"/>
<style>
:root{
  --ff:'Syne',sans-serif;
  --fb:'Anybody',sans-serif;
  --c0:#0a0a0a;
  --c1:#f5f0e8;
  --lime:#c8ff00;
  --coral:#ff5c5c;
  --sky:#5ce1ff;
  --violet:#b388ff;
  --peach:#ffb347;
  --mint:#00f5a0;
  --r:20px;
  --rbig:28px;
}
*{box-sizing:border-box;margin:0;padding:0}
html{scroll-behavior:smooth}
body{font-family:var(--fb);background:var(--c1);color:var(--c0);-webkit-font-smoothing:antialiased;overflow-x:hidden;cursor:none}
.cur{width:14px;height:14px;background:var(--c0);border-radius:50%;position:fixed;pointer-events:none;z-index:9999;transition:transform .12s;mix-blend-mode:difference;top:0;left:0}
.cur-ring{width:38px;height:38px;border:1.5px solid rgba(0,0,0,.5);border-radius:50%;position:fixed;pointer-events:none;z-index:9998;top:0;left:0;transition:border-color .2s}
a{color:inherit;text-decoration:none}

/* MARQUEE */
.marquee-wrap{background:var(--c0);overflow:hidden;white-space:nowrap;padding:10px 0}
.marquee-inner{display:inline-block;animation:mq 20s linear infinite}
@keyframes mq{from{transform:translateX(0)}to{transform:translateX(-50%)}}
.marquee-inner span{font-family:var(--ff);font-size:11px;font-weight:800;color:var(--lime);letter-spacing:.14em;text-transform:uppercase;padding:0 28px}
.marquee-inner span.dot{color:var(--coral);padding:0 4px}

/* HEADER */
header{position:sticky;top:0;z-index:200;background:var(--c1);border-bottom:2.5px solid var(--c0)}
.hdr{display:flex;align-items:center;justify-content:space-between;padding:0 32px;height:68px;gap:20px}
.logo{font-family:var(--ff);font-size:30px;font-weight:800;letter-spacing:-.02em;color:var(--c0);flex-shrink:0}
.logo em{font-style:normal;background:var(--lime);padding:2px 8px;border-radius:8px}
.srch{flex:1;max-width:440px;display:flex;align-items:center;gap:10px;background:#fff;border:2px solid var(--c0);border-radius:40px;padding:9px 18px}
.srch:focus-within{box-shadow:4px 4px 0 var(--c0)}
.srch input{flex:1;border:none;background:transparent;font-family:var(--fb);font-size:14px;color:var(--c0);outline:none}
.srch input::placeholder{color:#aaa}
.srch i{color:#aaa;font-size:14px}
.hbtns{display:flex;gap:8px;flex-shrink:0}
.hbtn{display:flex;align-items:center;gap:7px;padding:9px 16px;border-radius:40px;border:2px solid var(--c0);background:transparent;font-family:var(--ff);font-size:12px;font-weight:700;letter-spacing:.06em;text-transform:uppercase;cursor:none;transition:background .15s,transform .12s,box-shadow .12s;white-space:nowrap}
.hbtn:hover{background:var(--c0);color:var(--c1);transform:translateY(-2px);box-shadow:3px 3px 0 var(--coral)}
.hbtn.cart-h{background:var(--lime);border-color:var(--c0)}
.hbtn.cart-h:hover{background:var(--c0);color:var(--lime)}
.cbadge{background:var(--coral);color:#fff;font-size:10px;font-weight:800;width:18px;height:18px;border-radius:50%;display:grid;place-items:center;font-family:var(--ff)}
.mob-tog{display:none;background:none;border:2px solid var(--c0);border-radius:10px;width:40px;height:40px;font-size:16px;cursor:none;align-items:center;justify-content:center}

/* NAV PILLS */
.navpills{border-top:2px solid var(--c0);display:flex;gap:6px;padding:10px 32px;overflow-x:auto;scrollbar-width:none;background:var(--c1)}
.navpills::-webkit-scrollbar{display:none}
.npill{font-family:var(--ff);font-size:11px;font-weight:700;letter-spacing:.08em;text-transform:uppercase;padding:7px 16px;border-radius:40px;border:1.5px solid var(--c0);background:transparent;color:var(--c0);cursor:none;transition:all .15s;white-space:nowrap;flex-shrink:0}
.npill:hover,.npill.active{background:var(--c0);color:var(--c1)}
.npill.sale{background:var(--coral);color:#fff;border-color:var(--coral)}
.npill.sale:hover{background:var(--c0);border-color:var(--c0)}

/* HERO TILE GRID */
.tile-hero{display:grid;grid-template-columns:1fr 1fr 1fr;grid-template-rows:340px 200px;gap:12px;padding:20px 32px}
.tile{border-radius:var(--rbig);overflow:hidden;position:relative;cursor:none;transition:transform .25s,box-shadow .25s}
.tile:hover{transform:translateY(-4px);box-shadow:6px 6px 0 var(--c0)}
.tile img{width:100%;height:100%;object-fit:cover;display:block;transition:transform .45s ease}
.tile:hover img{transform:scale(1.06)}
.tile-over{position:absolute;inset:0;display:flex;flex-direction:column;justify-content:flex-end;padding:28px}
.tile-tag{font-family:var(--ff);font-size:10px;font-weight:800;letter-spacing:.14em;text-transform:uppercase;padding:5px 12px;border-radius:40px;background:var(--lime);color:var(--c0);width:fit-content;margin-bottom:10px}
.tile-title{font-family:var(--ff);font-size:clamp(20px,2.5vw,42px);font-weight:800;color:#fff;line-height:1.12;text-shadow:0 2px 20px rgba(0,0,0,.4)}
.tile-sub{font-size:13px;color:rgba(255,255,255,.8);margin-top:6px}
.tile.t-big{grid-column:1/3;grid-row:1/3}
.tile.t-tall{grid-row:1/3}
.tile-solid{border-radius:var(--rbig);padding:28px;display:flex;flex-direction:column;justify-content:space-between;cursor:none;transition:transform .2s,box-shadow .2s;border:2.5px solid var(--c0)}
.tile-solid:hover{transform:translateY(-5px) rotate(-.4deg);box-shadow:6px 6px 0 var(--c0)}
.tile-solid h2{font-family:var(--ff);font-size:clamp(20px,2.2vw,30px);font-weight:800;line-height:1.1}
.chip{display:inline-flex;align-items:center;gap:8px;font-family:var(--ff);font-size:12px;font-weight:800;letter-spacing:.06em;text-transform:uppercase;padding:10px 20px;border-radius:40px;border:2px solid var(--c0);background:var(--c0);color:var(--c1);cursor:none;transition:background .15s,color .15s;width:fit-content;margin-top:16px}
.chip:hover{background:transparent;color:var(--c0)}
.chip.inv{background:transparent;color:var(--c0)}
.chip.inv:hover{background:var(--c0);color:var(--c1)}

/* BANNER STRIP */
.bstrip{display:grid;grid-template-columns:repeat(3,1fr);gap:12px;padding:0 32px 32px}
.bcard{border-radius:var(--r);padding:28px;border:2.5px solid var(--c0);cursor:none;transition:transform .2s,box-shadow .2s;display:flex;flex-direction:column;justify-content:space-between;min-height:160px}
.bcard:hover{transform:translateY(-4px) rotate(.3deg);box-shadow:5px 5px 0 var(--c0)}
.bcard h3{font-family:var(--ff);font-size:22px;font-weight:800;line-height:1.2}
.bcard p{font-size:13px;opacity:.55;margin-top:4px}
.bcard .arr{font-family:var(--ff);font-size:12px;font-weight:700;margin-top:18px;display:inline-flex;align-items:center;gap:6px}

/* SECTION */
.section{padding:40px 32px}
.sh{display:flex;align-items:baseline;justify-content:space-between;margin-bottom:24px}
.sh h2{font-family:var(--ff);font-size:clamp(24px,3vw,38px);font-weight:800;letter-spacing:-.02em}
.sh a{font-family:var(--ff);font-size:12px;font-weight:700;letter-spacing:.1em;text-transform:uppercase;border-bottom:2px solid var(--c0);padding-bottom:1px;color:var(--c0)}

/* PRODUCT TILES */
.ptiles{display:grid;grid-template-columns:repeat(5,1fr);gap:14px}
.pc{background:#fff;border-radius:var(--r);border:2px solid transparent;overflow:hidden;cursor:none;transition:border-color .2s,transform .2s,box-shadow .2s;position:relative}
.pc:hover{border-color:var(--c0);transform:translateY(-4px);box-shadow:5px 5px 0 var(--c0)}
.pc-img{aspect-ratio:3/4;overflow:hidden;position:relative;background:#f0ede6}
.pc-img img{width:100%;height:100%;object-fit:cover;transition:transform .4s ease}
.pc:hover .pc-img img{transform:scale(1.08)}
.pbadge{position:absolute;top:10px;left:10px;font-family:var(--ff);font-size:10px;font-weight:800;letter-spacing:.08em;text-transform:uppercase;padding:4px 10px;border-radius:40px;z-index:2}
.pbadge.lime{background:var(--lime);color:var(--c0)}
.pbadge.coral{background:var(--coral);color:#fff}
.pbadge.sky{background:var(--sky);color:var(--c0)}
.pc-quick{position:absolute;bottom:-56px;left:8px;right:8px;background:var(--c0);color:var(--lime);font-family:var(--ff);font-size:11px;font-weight:700;letter-spacing:.08em;text-transform:uppercase;padding:13px;text-align:center;border-radius:12px;transition:bottom .22s cubic-bezier(.22,1,.36,1);cursor:none;border:none}
.pc:hover .pc-quick{bottom:8px}
.pc-wish{position:absolute;top:10px;right:10px;width:32px;height:32px;border-radius:50%;background:#fff;border:1.5px solid #eee;display:grid;place-items:center;font-size:13px;color:#bbb;cursor:none;transition:color .15s,border-color .15s,transform .15s;z-index:2}
.pc-wish:hover,.pc-wish.on{color:var(--coral);border-color:var(--coral);transform:scale(1.15)}
.pc-body{padding:12px 12px 14px}
.pc-brand{font-family:var(--ff);font-size:11px;font-weight:800;letter-spacing:.1em;text-transform:uppercase}
.pc-name{font-size:13px;color:#777;margin:3px 0 8px;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}
.pc-row{display:flex;align-items:center;gap:8px;flex-wrap:wrap}
.pc-price{font-family:var(--ff);font-size:16px;font-weight:800}
.pc-old{font-size:12px;color:#bbb;text-decoration:line-through}
.pc-off{font-family:var(--ff);font-size:11px;font-weight:800;background:var(--lime);color:var(--c0);padding:2px 7px;border-radius:6px}
.pc-rat{display:flex;align-items:center;gap:5px;margin-top:6px}
.rat-pill{background:var(--c0);color:var(--lime);font-family:var(--ff);font-size:10px;font-weight:700;padding:2px 8px;border-radius:6px;display:inline-flex;align-items:center;gap:3px}
.rat-n{font-size:11px;color:#aaa}

/* DEAL TILE */
.deal-tile{background:var(--c0);color:#fff;border-radius:var(--rbig);padding:44px 48px;display:grid;grid-template-columns:1fr auto 1fr;gap:40px;align-items:center;margin:0 32px 32px;border:2.5px solid var(--c0)}
.dt-tag{display:inline-block;background:var(--coral);color:#fff;font-family:var(--ff);font-size:10px;font-weight:800;padding:5px 14px;border-radius:40px;letter-spacing:.1em;text-transform:uppercase;margin-bottom:14px}
.dt-h{font-family:var(--ff);font-size:clamp(24px,3vw,40px);font-weight:800;line-height:1.1}
.dt-sub{color:rgba(255,255,255,.5);font-size:14px;margin-top:8px}
.dt-timer{display:flex;gap:10px;margin-top:24px;flex-wrap:wrap}
.dt-box{text-align:center;background:rgba(255,255,255,.06);border:1.5px solid rgba(255,255,255,.1);border-radius:16px;padding:16px 18px;min-width:68px}
.dt-num{font-family:var(--ff);font-size:30px;font-weight:800;color:var(--lime);line-height:1}
.dt-lbl{font-family:var(--ff);font-size:9px;font-weight:700;letter-spacing:.12em;text-transform:uppercase;color:rgba(255,255,255,.35);margin-top:4px}
.dt-img{width:210px;height:210px;object-fit:contain;filter:drop-shadow(0 20px 50px rgba(0,0,0,.6));display:block;margin:0 auto}
.dt-r{text-align:right}
.dt-old{color:rgba(255,255,255,.35);text-decoration:line-through;font-size:14px}
.dt-price{font-family:var(--ff);font-size:48px;font-weight:800;color:var(--lime);line-height:1;margin:6px 0}
.dt-save{display:inline-block;background:var(--coral);color:#fff;font-family:var(--ff);font-size:12px;font-weight:800;padding:5px 14px;border-radius:40px;margin-bottom:20px}

/* CATS SCROLL */
.cat-row{display:flex;gap:14px;overflow-x:auto;padding:0 32px 16px;scrollbar-width:none}
.cat-row::-webkit-scrollbar{display:none}
.cat-chip{flex-shrink:0;display:flex;flex-direction:column;align-items:center;gap:8px;cursor:none}
.cat-circ{width:76px;height:76px;border-radius:50%;overflow:hidden;border:3px solid transparent;transition:border-color .2s,transform .2s}
.cat-chip:hover .cat-circ,.cat-chip.on .cat-circ{border-color:var(--c0);transform:scale(1.08)}
.cat-circ img{width:100%;height:100%;object-fit:cover}
.cat-chip span{font-family:var(--ff);font-size:11px;font-weight:700;letter-spacing:.04em}

/* TESTI */
.tgrid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px;padding:0 32px 40px}
.tcard{background:#fff;border-radius:var(--r);border:2px solid transparent;padding:24px;transition:border-color .2s,transform .2s,box-shadow .2s}
.tcard:hover{border-color:var(--c0);transform:translateY(-3px);box-shadow:4px 4px 0 var(--c0)}
.tcard-stars{margin-bottom:12px;font-size:18px;letter-spacing:2px}
.tcard-text{font-size:14px;line-height:1.75;color:#555;margin-bottom:18px}
.tcard-auth{display:flex;align-items:center;gap:12px}
.tcard-av{width:42px;height:42px;border-radius:50%;object-fit:cover;flex-shrink:0;border:2.5px solid var(--c0)}
.tcard-name{font-family:var(--ff);font-size:13px;font-weight:800}
.tcard-role{font-size:11px;color:#aaa}

/* NEWSLETTER */
.nl{background:var(--lime);border-radius:var(--rbig);margin:0 32px 40px;padding:48px 52px;display:grid;grid-template-columns:1fr 1fr;gap:40px;align-items:center;border:2.5px solid var(--c0)}
.nl h2{font-family:var(--ff);font-size:clamp(26px,3.5vw,46px);font-weight:800;line-height:1.1}
.nl p{margin-top:10px;font-size:14px;color:rgba(0,0,0,.55);line-height:1.7}
.nl-form{display:flex;gap:8px}
.nl-form input{flex:1;border:2px solid var(--c0);background:#fff;color:var(--c0);padding:14px 18px;border-radius:40px;font-family:var(--fb);font-size:14px;outline:none;transition:box-shadow .2s}
.nl-form input:focus{box-shadow:4px 4px 0 var(--c0)}
.nl-form input::placeholder{color:#aaa}
.nl-form button{background:var(--c0);color:var(--lime);font-family:var(--ff);font-size:12px;font-weight:800;letter-spacing:.08em;text-transform:uppercase;padding:14px 24px;border-radius:40px;border:2px solid var(--c0);cursor:none;transition:background .15s,color .15s;white-space:nowrap}
.nl-form button:hover{background:transparent;color:var(--c0)}
.nl-msg{margin-top:10px;font-family:var(--ff);font-size:13px;font-weight:700;height:18px}

/* FOOTER */
footer{background:var(--c0);color:rgba(255,255,255,.5);font-size:13px;padding:48px 32px 24px}
.fg{display:grid;grid-template-columns:2fr 1fr 1fr 1fr;gap:32px;margin-bottom:36px}
.f-logo{font-family:var(--ff);font-size:26px;font-weight:800;color:#fff;margin-bottom:14px}
.f-logo em{font-style:normal;background:var(--lime);color:var(--c0);padding:2px 7px;border-radius:7px}
.f-about{line-height:1.75;max-width:260px}
.f-soc{display:flex;gap:8px;margin-top:18px}
.fsoc{width:36px;height:36px;border-radius:50%;border:1.5px solid rgba(255,255,255,.12);display:grid;place-items:center;font-size:14px;cursor:none;transition:background .15s;color:rgba(255,255,255,.5)}
.fsoc:hover{background:var(--lime);border-color:var(--lime);color:var(--c0)}
.f-col h4{font-family:var(--ff);font-size:11px;font-weight:800;letter-spacing:.1em;text-transform:uppercase;color:#fff;margin-bottom:14px}
.f-col ul{list-style:none}
.f-col li{margin-bottom:10px}
.f-col a{color:rgba(255,255,255,.5);transition:color .15s}
.f-col a:hover{color:var(--lime)}
.f-copy{border-top:1px solid rgba(255,255,255,.06);padding-top:18px;text-align:center;font-size:12px}

/* CART */
.ov{position:fixed;inset:0;background:rgba(0,0,0,.6);z-index:400;opacity:0;pointer-events:none;transition:opacity .3s;backdrop-filter:blur(3px)}
.ov.on{opacity:1;pointer-events:all}
.drawer{position:fixed;top:0;right:-460px;width:440px;height:100%;background:var(--c1);z-index:401;transition:right .38s cubic-bezier(.22,1,.36,1);display:flex;flex-direction:column;border-left:2.5px solid var(--c0)}
.drawer.on{right:0}
.dr-head{padding:22px 24px;border-bottom:2px solid var(--c0);display:flex;align-items:center;justify-content:space-between}
.dr-head h3{font-family:var(--ff);font-size:22px;font-weight:800}
.dr-close{background:var(--c0);color:var(--c1);border:none;width:36px;height:36px;border-radius:50%;display:grid;place-items:center;cursor:none;font-size:16px}
.dr-close:hover{background:var(--coral)}
.dr-items{flex:1;overflow-y:auto;padding:16px 24px}
.dr-item{display:flex;gap:14px;padding:14px 0;border-bottom:1.5px dashed rgba(0,0,0,.1)}
.dr-item img{width:70px;height:88px;object-fit:cover;border-radius:12px;flex-shrink:0;border:1.5px solid rgba(0,0,0,.08)}
.dii{flex:1}
.dii-brand{font-family:var(--ff);font-size:10px;font-weight:800;letter-spacing:.1em;text-transform:uppercase}
.dii-name{font-size:13px;color:#777;margin:2px 0 6px}
.dii-price{font-family:var(--ff);font-size:15px;font-weight:800}
.dii-qty{display:flex;align-items:center;gap:10px;margin-top:8px}
.qbtn{width:28px;height:28px;border-radius:50%;border:1.5px solid var(--c0);background:transparent;font-size:14px;display:grid;place-items:center;cursor:none;transition:background .15s}
.qbtn:hover{background:var(--c0);color:var(--c1)}
.qn{font-family:var(--ff);font-size:13px;font-weight:800;min-width:16px;text-align:center}
.dii-del{color:#ccc;cursor:none;margin-left:auto;padding:4px;font-size:14px;align-self:flex-start;transition:color .15s}
.dii-del:hover{color:var(--coral)}
.dr-foot{padding:20px 24px;border-top:2px solid var(--c0)}
.dr-row{display:flex;justify-content:space-between;font-size:14px;margin-bottom:7px}
.dr-row.big{font-family:var(--ff);font-size:18px;font-weight:800;margin-top:10px;padding-top:10px;border-top:2px dashed rgba(0,0,0,.1)}
.chk-btn{display:block;width:100%;background:var(--c0);color:var(--lime);font-family:var(--ff);font-size:13px;font-weight:800;letter-spacing:.1em;text-transform:uppercase;padding:16px;border-radius:14px;text-align:center;margin-top:16px;cursor:none;border:none;transition:background .15s,transform .15s}
.chk-btn:hover{background:#222;transform:translateY(-2px)}
.dr-empty{text-align:center;padding:56px 24px;color:#bbb}
.dr-empty i{font-size:52px;margin-bottom:16px;display:block}
.dr-empty p{font-family:var(--ff);font-size:16px;font-weight:700;color:#aaa}

/* TOAST */
.toast{position:fixed;bottom:36px;left:50%;transform:translateX(-50%) translateY(16px);background:var(--c0);color:var(--lime);font-family:var(--ff);font-size:13px;font-weight:700;padding:13px 24px;border-radius:40px;z-index:500;opacity:0;pointer-events:none;transition:opacity .25s,transform .25s;box-shadow:0 8px 32px rgba(0,0,0,.25);white-space:nowrap;letter-spacing:.04em}
.toast.on{opacity:1;transform:translateX(-50%) translateY(0)}

/* REVEAL */
.rv{opacity:0;transform:translateY(28px);transition:opacity .6s ease,transform .6s ease}
.rv.vs{opacity:1;transform:none}

/* RESPONSIVE */
@media(max-width:1100px){.ptiles{grid-template-columns:repeat(4,1fr)}.fg{grid-template-columns:1fr 1fr}}
@media(max-width:900px){
  .navpills{display:none}.mob-tog{display:flex}
  .tile-hero{grid-template-columns:1fr 1fr;grid-template-rows:260px 180px;padding:12px 16px}
  .tile.t-big{grid-column:1/3;grid-row:1/2}.tile.t-tall{grid-row:auto}
  .ptiles{grid-template-columns:repeat(3,1fr)}
  .bstrip{grid-template-columns:1fr;padding:0 16px 16px}
  .deal-tile{grid-template-columns:1fr;padding:28px 24px;margin:0 16px 24px;text-align:center}
  .dt-img{width:140px;height:140px}.dt-r{text-align:center}
  .tgrid{grid-template-columns:1fr 1fr;padding:0 16px 28px}
  .nl{grid-template-columns:1fr;margin:0 16px 28px;padding:32px 28px}
  .nl p{display:none}
  .section{padding:28px 16px}
  .cat-row{padding:0 16px 16px}
  .fg{grid-template-columns:1fr 1fr}
  footer{padding:32px 16px 16px}
}
@media(max-width:600px){
  .hdr{padding:0 14px;gap:10px}.srch{display:none}
  .tile-hero{grid-template-columns:1fr;padding:10px 12px}
  .tile.t-big,.tile.t-tall{grid-column:auto;grid-row:auto}
  .tile{min-height:200px}
  .ptiles{grid-template-columns:repeat(2,1fr);gap:10px}
  .tgrid{grid-template-columns:1fr;padding:0 12px 24px}
  .nl{margin:0 12px 24px;padding:24px 18px}
  .nl-form{flex-direction:column}
  .deal-tile{margin:0 12px 20px}
  .dt-timer{justify-content:center}
  .bstrip{padding:0 12px 12px}
  .fg{grid-template-columns:1fr}
  .drawer{width:100%;right:-100%}
  footer{padding:24px 12px 14px}
  .hbtns .hbtn:not(.cart-h){display:none}
}
</style>
</head>
<body>

<div class="cur" id="cur"></div>
<div class="cur-ring" id="curRing"></div>

<!-- MARQUEE -->
<div class="marquee-wrap" aria-hidden="true">
  <div class="marquee-inner">
    <span>Free Shipping ₹799+</span><span class="dot">✦</span><span>New Drops Every Monday</span><span class="dot">✦</span><span>Code DRIP10 → 10% Off</span><span class="dot">✦</span><span>Returns? No Stress.</span><span class="dot">✦</span><span>Free Shipping ₹799+</span><span class="dot">✦</span><span>New Drops Every Monday</span><span class="dot">✦</span><span>Code DRIP10 → 10% Off</span><span class="dot">✦</span><span>Returns? No Stress.</span><span class="dot">✦</span>
  </div>
</div>

<!-- HEADER -->
<header>
  <div class="hdr">
    <div style="display:flex;align-items:center;gap:14px;flex-shrink:0">
      <button class="mob-tog" id="mobTog"><i class="fas fa-bars"></i></button>
      <a class="logo" href="#"><em>DRIP</em></a>
    </div>
    <div class="srch">
      <i class="fas fa-search"></i>
      <input type="search" id="srchIn" placeholder="Search brands, products, vibes…" autocomplete="off"/>
    </div>
    <div class="hbtns">
      <button class="hbtn"><i class="far fa-heart"></i> <span>Saved</span></button>
      <button class="hbtn cart-h" id="cartBtn"><i class="fas fa-bag-shopping"></i> <span>Bag</span> <span class="cbadge" id="cBadge">0</span></button>
    </div>
  </div>
  <div class="navpills">
    <span class="npill active">All</span><span class="npill">Men</span><span class="npill">Women</span><span class="npill">Kids</span><span class="npill">Sport</span><span class="npill">Beauty</span><span class="npill">Accessories</span><span class="npill sale">🔥 SALE</span>
  </div>
</header>

<!-- Mobile nav -->
<div id="mobMenu" style="display:none;background:var(--c1);border-bottom:2px solid var(--c0);padding:12px 16px">
  <div style="display:flex;flex-wrap:wrap;gap:8px">
    <span class="npill active">All</span><span class="npill">Men</span><span class="npill">Women</span><span class="npill">Kids</span><span class="npill">Sport</span><span class="npill sale">🔥 SALE</span>
  </div>
</div>

<!-- HERO TILES -->
<div class="tile-hero">
  <div class="tile t-big" style="background:#000">
    <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=1200&q=80" alt="Hero"/>
    <div class="tile-over" style="background:linear-gradient(135deg,rgba(0,0,0,.7) 0%,rgba(0,0,0,.05) 65%)">
      <div class="tile-tag">🌞 Summer Drop</div>
      <div class="tile-title">Fresh Fits.<br/>Zero Limits.</div>
      <div class="tile-sub">New season. New you. Starting ₹499</div>
      <button class="chip" style="background:var(--lime);color:var(--c0);border-color:var(--lime);margin-top:16px" onclick="document.getElementById('pg1').scrollIntoView({behavior:'smooth'})">Shop Now <i class="fas fa-arrow-right"></i></button>
    </div>
  </div>
  <div class="tile t-tall tile-solid" style="background:var(--lime)">
    <div>
      <div style="font-size:40px;margin-bottom:8px">👟</div>
      <h2>Kicks<br/>Under<br/>₹2K</h2>
      <p style="font-size:12px;color:rgba(0,0,0,.5);margin-top:6px">100+ styles</p>
    </div>
    <button class="chip">Browse <i class="fas fa-chevron-right"></i></button>
  </div>
  <div class="tile tile-solid" style="background:var(--coral)">
    <div><div style="font-size:30px;margin-bottom:4px">💅</div><h2 style="color:#fff;font-size:22px">Beauty<br/>Picks</h2></div>
    <button class="chip" style="background:#fff;color:var(--coral);border-color:#fff">Explore</button>
  </div>
  <div class="tile tile-solid" style="background:var(--sky)">
    <div><div style="font-size:30px;margin-bottom:4px">🎒</div><h2 style="font-size:22px">Bags &amp;<br/>Packs</h2></div>
    <button class="chip">Shop</button>
  </div>
</div>

<!-- BANNER STRIP -->
<div class="bstrip rv">
  <div class="bcard" style="background:var(--violet)"><div><h3 style="color:#fff">Up to 70%<br/>Off Brands</h3><p style="color:rgba(255,255,255,.6)">Nike, Adidas, Zara & more</p></div><div class="arr" style="color:#fff">Shop Sale <i class="fas fa-arrow-right"></i></div></div>
  <div class="bcard" style="background:var(--peach)"><div><h3>New Season<br/>Arrivals</h3><p>Straight from runway to you</p></div><div class="arr">View All <i class="fas fa-arrow-right"></i></div></div>
  <div class="bcard" style="background:var(--mint)"><div><h3>Trending<br/>This Week</h3><p>Updated every Monday</p></div><div class="arr">See What's Hot <i class="fas fa-arrow-right"></i></div></div>
</div>

<!-- CATS -->
<section class="section rv" style="padding-bottom:8px">
  <div class="sh"><h2>Browse Categories</h2></div>
  <div class="cat-row" id="catRow"></div>
</section>

<!-- TRENDING -->
<section class="section rv">
  <div class="sh"><h2>Trending 🔥</h2><a href="#">View All</a></div>
  <div class="ptiles" id="pg1"></div>
</section>

<!-- DEAL TILE -->
<div class="deal-tile rv">
  <div>
    <div class="dt-tag">⚡ Deal of the Day</div>
    <h2 class="dt-h">MacBook Air M3<br/>at a Wild Price</h2>
    <p class="dt-sub">Only 8 left. Tick tock.</p>
    <div class="dt-timer">
      <div class="dt-box"><div class="dt-num" id="cdD">00</div><div class="dt-lbl">Days</div></div>
      <div class="dt-box"><div class="dt-num" id="cdH">00</div><div class="dt-lbl">Hrs</div></div>
      <div class="dt-box"><div class="dt-num" id="cdM">00</div><div class="dt-lbl">Min</div></div>
      <div class="dt-box"><div class="dt-num" id="cdS">00</div><div class="dt-lbl">Sec</div></div>
    </div>
  </div>
  <img class="dt-img" src="https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=500&q=80" alt="MacBook"/>
  <div class="dt-r">
    <div class="dt-old">₹1,19,990</div>
    <div class="dt-price">₹99,990</div>
    <div class="dt-save">YOU SAVE ₹20,000</div>
    <button class="chip" style="background:var(--lime);border-color:var(--lime);color:var(--c0)" onclick="addById(999)">Add to Bag <i class="fas fa-bag-shopping"></i></button>
  </div>
</div>

<!-- NEW ARRIVALS -->
<section class="section rv">
  <div class="sh"><h2>Just Dropped ✨</h2><a href="#">See All</a></div>
  <div class="ptiles" id="pg2"></div>
</section>

<!-- TESTI -->
<section class="section rv" style="padding-bottom:0"><div class="sh"><h2>Real Talk 💬</h2></div></section>
<div class="tgrid" id="tgrid"></div>

<!-- NEWSLETTER -->
<div class="nl rv">
  <div>
    <h2>Get the<br/>Drip First.</h2>
    <p>Early drops, exclusive discounts &amp; zero boring emails. Promise.</p>
  </div>
  <div>
    <div class="nl-form"><input type="email" id="nlIn" placeholder="your@email.com"/><button id="nlBtn">Subscribe</button></div>
    <div class="nl-msg" id="nlMsg"></div>
  </div>
</div>

<!-- FOOTER -->
<footer>
  <div class="fg">
    <div>
      <div class="f-logo"><em>DRIP</em></div>
      <p class="f-about">India's freshest fashion destination. Thousands of brands, millions of looks — delivered fast.</p>
      <div class="f-soc">
        <a class="fsoc" href="#"><i class="fab fa-instagram"></i></a>
        <a class="fsoc" href="#"><i class="fab fa-tiktok"></i></a>
        <a class="fsoc" href="#"><i class="fab fa-twitter"></i></a>
        <a class="fsoc" href="#"><i class="fab fa-youtube"></i></a>
      </div>
    </div>
    <div class="f-col"><h4>Shop</h4><ul><li><a href="#">Men</a></li><li><a href="#">Women</a></li><li><a href="#">Kids</a></li><li><a href="#">Footwear</a></li><li><a href="#">Accessories</a></li></ul></div>
    <div class="f-col"><h4>Help</h4><ul><li><a href="#">Track Order</a></li><li><a href="#">Returns</a></li><li><a href="#">Size Guide</a></li><li><a href="#">Contact</a></li></ul></div>
    <div class="f-col"><h4>Company</h4><ul><li><a href="#">About</a></li><li><a href="#">Careers</a></li><li><a href="#">Press</a></li><li><a href="#">Privacy</a></li></ul></div>
  </div>
  <div class="f-copy">© <span id="yr"></span> DRIP Fashion. Made with 💚 for the culture.</div>
</footer>

<!-- CART DRAWER -->
<div class="ov" id="ov"></div>
<div class="drawer" id="drawer">
  <div class="dr-head">
    <h3>My Bag <span id="drCnt" style="font-size:13px;font-family:var(--fb);font-weight:400;color:#aaa"></span></h3>
    <button class="dr-close" id="drClose"><i class="fas fa-xmark"></i></button>
  </div>
  <div class="dr-items" id="drItems"></div>
  <div class="dr-foot" id="drFoot" style="display:none">
    <div class="dr-row"><span>MRP Total</span><span id="drMRP"></span></div>
    <div class="dr-row" style="color:#21b36a"><span>Discount</span><span id="drDisc" style="font-weight:700"></span></div>
    <div class="dr-row" style="color:#aaa;font-size:12px"><span>Delivery</span><span style="color:#21b36a;font-weight:700">FREE 🎉</span></div>
    <div class="dr-row big"><span>Total</span><span id="drTotal"></span></div>
    <button class="chk-btn">Place Order <i class="fas fa-arrow-right"></i></button>
  </div>
</div>
<div class="toast" id="toast"></div>

<script>
// CURSOR
const cur=document.getElementById('cur'),ring=document.getElementById('curRing');
let mx=0,my=0,rx=0,ry=0;
document.addEventListener('mousemove',e=>{mx=e.clientX;my=e.clientY;cur.style.left=(mx-7)+'px';cur.style.top=(my-7)+'px'});
(function loop(){rx+=(mx-rx)*.18;ry+=(my-ry)*.18;ring.style.left=(rx-19)+'px';ring.style.top=(ry-19)+'px';requestAnimationFrame(loop)})();
function addHover(sel){document.querySelectorAll(sel).forEach(el=>{el.addEventListener('mouseenter',()=>{cur.style.transform='scale(2.5)';ring.style.transform='scale(1.4)'});el.addEventListener('mouseleave',()=>{cur.style.transform='';ring.style.transform=''})})}
setTimeout(()=>addHover('a,button,.tile,.tile-solid,.pc,.tcard,.bcard,.cat-chip'),500);

// DATA
const CATS=[
  {n:'Dresses',img:'https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=200&q=60'},
  {n:'Sneakers',img:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=200&q=60'},
  {n:'Jeans',img:'https://images.unsplash.com/photo-1583744946564-b52ac1c389c8?auto=format&fit=crop&w=200&q=60'},
  {n:'Watches',img:'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=200&q=60'},
  {n:'Bags',img:'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=200&q=60'},
  {n:'Sunglasses',img:'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=200&q=60'},
  {n:'Perfumes',img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=200&q=60'},
  {n:'Tops',img:'https://images.unsplash.com/photo-1434389677669-e08b4cac3105?auto=format&fit=crop&w=200&q=60'},
  {n:'Kurtas',img:'https://images.unsplash.com/photo-1615886753866-79396abc446f?auto=format&fit=crop&w=200&q=60'},
  {n:'Sarees',img:'https://images.unsplash.com/photo-1610030469983-98e550d6193c?auto=format&fit=crop&w=200&q=60'},
];
const PRODS=[
  {id:1,brand:'Nike',name:'Air Zoom Pegasus 40',price:8995,mrp:11995,img:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?auto=format&fit=crop&w=600&q=80',rating:4.5,reviews:2341,badge:'NEW',bc:'lime'},
  {id:2,brand:'Zara',name:'Printed Floral Midi Dress',price:2399,mrp:3999,img:'https://images.unsplash.com/photo-1595777457583-95e059d581b8?auto=format&fit=crop&w=600&q=80',rating:4.3,reviews:867,badge:'SALE',bc:'coral'},
  {id:3,brand:'H&M',name:'Slim Fit Stretch Jeans',price:1499,mrp:2499,img:'https://images.unsplash.com/photo-1583744946564-b52ac1c389c8?auto=format&fit=crop&w=600&q=80',rating:4.1,reviews:1523,badge:'',bc:''},
  {id:4,brand:'Fossil',name:'Gen 6 Smartwatch',price:18995,mrp:24995,img:'https://images.unsplash.com/photo-1523275335684-37898b6baf30?auto=format&fit=crop&w=600&q=80',rating:4.7,reviews:432,badge:'HOT',bc:'coral'},
  {id:5,brand:'Adidas',name:'Ultraboost 23',price:12999,mrp:17999,img:'https://images.unsplash.com/photo-1608231387042-66d1773070a5?auto=format&fit=crop&w=600&q=80',rating:4.6,reviews:1890,badge:'SALE',bc:'coral'},
  {id:6,brand:'Michael Kors',name:'Leather Crossbody Bag',price:8499,mrp:12999,img:'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80',rating:4.4,reviews:654,badge:'',bc:''},
  {id:7,brand:"Levi's",name:'511 Slim Fit Chinos',price:2199,mrp:3499,img:'https://images.unsplash.com/photo-1519315901367-f34ff9154487?auto=format&fit=crop&w=600&q=80',rating:4.2,reviews:2109,badge:'',bc:''},
  {id:8,brand:'Ray-Ban',name:'Aviator Classic',price:6999,mrp:9499,img:'https://images.unsplash.com/photo-1511499767150-a48a237f0083?auto=format&fit=crop&w=600&q=80',rating:4.8,reviews:3421,badge:'TOP',bc:'sky'},
  {id:9,brand:'Puma',name:'Training Dry Cell Tee',price:899,mrp:1499,img:'https://images.unsplash.com/photo-1562157873-818bc0726f68?auto=format&fit=crop&w=600&q=80',rating:4.1,reviews:780,badge:'NEW',bc:'lime'},
  {id:10,brand:'Chanel',name:'N°5 EDP 50ml',price:12500,mrp:14500,img:'https://images.unsplash.com/photo-1585386959984-a4155224a1ad?auto=format&fit=crop&w=600&q=80',rating:4.9,reviews:5612,badge:'',bc:''},
];
const TESTI=[
  {name:'Priya S.',role:'Fashion Blogger',stars:5,text:'Honestly? DRIP just gets it. The curation is so on point and delivery was insanely fast. My wardrobe has never looked better 🔥',img:'https://images.unsplash.com/photo-1494790108377-be9c29b29330?auto=format&fit=crop&w=80&q=60'},
  {name:'Rahul M.',role:'Verified Buyer',stars:5,text:'Returns were painless. Ordered 3 sizes, returned 2, refund in 2 days. This is how online shopping should always be 💯',img:'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?auto=format&fit=crop&w=80&q=60'},
  {name:'Aisha K.',role:'Style Enthusiast',stars:4,text:'Found a Zara dress 60% off that was sold out everywhere. Their sale section is an absolute goldmine omg 😭✨',img:'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?auto=format&fit=crop&w=80&q=60'},
];

// CART
let cart=[];
function addById(id){
  const p=id===999?{id:999,brand:'Apple',name:'MacBook Air M3',price:99990,mrp:119990,img:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?auto=format&fit=crop&w=600&q=80'}:PRODS.find(x=>x.id===id);
  if(!p)return;
  const ex=cart.find(x=>x.id===id);
  if(ex)ex.qty++;else cart.push({...p,qty:1});
  syncCart();showToast(p.brand+' added to bag! 🛍️');openCart();
}
function rmv(id){cart=cart.filter(x=>x.id!==id);syncCart()}
function chgQty(id,d){const i=cart.find(x=>x.id===id);if(!i)return;i.qty=Math.max(1,i.qty+d);if(i.qty===0)rmv(id);else syncCart()}
function syncCart(){
  const n=cart.reduce((a,b)=>a+b.qty,0);
  document.getElementById('cBadge').textContent=n;
  document.getElementById('drCnt').textContent=n?`(${n} item${n>1?'s':''})`:''
  renderCartItems();
  const mrp=cart.reduce((a,b)=>a+(b.mrp||b.price)*b.qty,0);
  const fin=cart.reduce((a,b)=>a+b.price*b.qty,0);
  document.getElementById('drMRP').textContent='₹'+mrp.toLocaleString('en-IN');
  document.getElementById('drDisc').textContent='− ₹'+(mrp-fin).toLocaleString('en-IN');
  document.getElementById('drTotal').textContent='₹'+fin.toLocaleString('en-IN');
  document.getElementById('drFoot').style.display=cart.length?'block':'none';
}
function renderCartItems(){
  const el=document.getElementById('drItems');
  if(!cart.length){el.innerHTML='<div class="dr-empty"><i class="fas fa-bag-shopping"></i><p>Your bag is empty 😢</p></div>';return}
  el.innerHTML=cart.map(i=>`<div class="dr-item"><img src="${i.img}" alt="${i.name}"/><div class="dii"><div class="dii-brand">${i.brand}</div><div class="dii-name">${i.name}</div><div class="dii-price">₹${(i.price*i.qty).toLocaleString('en-IN')}</div><div class="dii-qty"><button class="qbtn" onclick="chgQty(${i.id},-1)">−</button><span class="qn">${i.qty}</span><button class="qbtn" onclick="chgQty(${i.id},1)">+</button></div></div><span class="dii-del" onclick="rmv(${i.id})"><i class="fas fa-trash-can"></i></span></div>`).join('');
}
function openCart(){document.getElementById('drawer').classList.add('on');document.getElementById('ov').classList.add('on');document.body.style.overflow='hidden'}
function closeCart(){document.getElementById('drawer').classList.remove('on');document.getElementById('ov').classList.remove('on');document.body.style.overflow=''}
document.getElementById('cartBtn').addEventListener('click',openCart);
document.getElementById('drClose').addEventListener('click',closeCart);
document.getElementById('ov').addEventListener('click',closeCart);

// CATS
function renderCats(){
  document.getElementById('catRow').innerHTML=CATS.map(c=>`<div class="cat-chip"><div class="cat-circ"><img src="${c.img}" alt="${c.n}" loading="lazy"/></div><span>${c.n}</span></div>`).join('');
  document.querySelectorAll('.cat-chip').forEach(ch=>{ch.addEventListener('click',()=>{document.querySelectorAll('.cat-chip').forEach(x=>x.classList.remove('on'));ch.classList.add('on');filterProds(ch.querySelector('span').textContent)})});
}

// PRODUCTS
function renderProds(list,tid){
  const el=document.getElementById(tid);
  if(!list.length){el.innerHTML='<p style="grid-column:1/-1;text-align:center;color:#aaa;padding:32px;font-family:var(--ff);font-weight:700">Nothing found 😕</p>';return}
  el.innerHTML=list.map(p=>{
    const d=p.mrp?Math.round((p.mrp-p.price)/p.mrp*100):0;
    return `<div class="pc"><div class="pc-img">${p.badge?`<div class="pbadge ${p.bc}">${p.badge}</div>`:''}<img src="${p.img}" alt="${p.name}" loading="lazy"/><button class="pc-quick" onclick="addById(${p.id})"><i class="fas fa-bag-shopping"></i> Add to Bag</button><button class="pc-wish" onclick="this.classList.toggle('on')"><i class="far fa-heart"></i></button></div><div class="pc-body"><div class="pc-brand">${p.brand}</div><div class="pc-name">${p.name}</div><div class="pc-row"><span class="pc-price">₹${p.price.toLocaleString('en-IN')}</span>${p.mrp?`<span class="pc-old">₹${p.mrp.toLocaleString('en-IN')}</span>`:''} ${d?`<span class="pc-off">${d}% OFF</span>`:''}</div><div class="pc-rat"><span class="rat-pill"><i class="fas fa-star" style="font-size:8px"></i> ${p.rating}</span><span class="rat-n">${p.reviews.toLocaleString()}</span></div></div></div>`;
  }).join('');
}
function filterProds(q){
  const r=q?PRODS.filter(p=>p.name.toLowerCase().includes(q.toLowerCase())||p.brand.toLowerCase().includes(q.toLowerCase())):PRODS;
  renderProds(r.slice(0,5),'pg1');renderProds(r.slice(5),'pg2');
}

// TESTI
function renderTesti(){
  document.getElementById('tgrid').innerHTML=TESTI.map(t=>`<div class="tcard"><div class="tcard-stars">${'⭐'.repeat(t.stars)}</div><p class="tcard-text">${t.text}</p><div class="tcard-auth"><img class="tcard-av" src="${t.img}" alt="${t.name}"/><div><div class="tcard-name">${t.name}</div><div class="tcard-role">${t.role}</div></div></div></div>`).join('');
}

// SEARCH
document.getElementById('srchIn').addEventListener('keydown',e=>{if(e.key==='Enter'){filterProds(e.target.value);document.getElementById('pg1').scrollIntoView({behavior:'smooth'})}});

// NEWSLETTER
document.getElementById('nlBtn').addEventListener('click',()=>{
  const v=document.getElementById('nlIn').value.trim(),m=document.getElementById('nlMsg');
  if(!v||!v.includes('@')){m.style.color='red';m.textContent='Enter a valid email 🙏';return}
  m.style.color=getComputedStyle(document.documentElement).getPropertyValue('--c0');
  m.textContent="🎉 You're in! Welcome to the fam.";
  document.getElementById('nlIn').value='';setTimeout(()=>m.textContent='',4000);
});

// NAV PILLS
document.querySelectorAll('.npill').forEach(p=>{p.addEventListener('click',()=>{document.querySelectorAll('.npill').forEach(x=>x.classList.remove('active'));p.classList.add('active')})});

// MOBILE MENU
document.getElementById('mobTog').addEventListener('click',()=>{const m=document.getElementById('mobMenu');m.style.display=m.style.display==='none'?'block':'none'});

// COUNTDOWN
(function cd(){
  const t=new Date(Date.now()+(1*86400+4*3600+22*60)*1000);
  function tick(){const d=t-Date.now();if(d<=0)return;document.getElementById('cdD').textContent=String(Math.floor(d/86400000)).padStart(2,'0');document.getElementById('cdH').textContent=String(Math.floor(d%86400000/3600000)).padStart(2,'0');document.getElementById('cdM').textContent=String(Math.floor(d%3600000/60000)).padStart(2,'0');document.getElementById('cdS').textContent=String(Math.floor(d%60000/1000)).padStart(2,'0')}
  tick();setInterval(tick,1000);
})();

// TOAST
let tmr;function showToast(msg){const t=document.getElementById('toast');t.textContent=msg;t.classList.add('on');clearTimeout(tmr);tmr=setTimeout(()=>t.classList.remove('on'),2800)}

// REVEAL
const obs=new IntersectionObserver(es=>es.forEach(e=>{if(e.isIntersecting)e.target.classList.add('vs')}),{threshold:.08});
document.querySelectorAll('.rv').forEach(el=>obs.observe(el));

// INIT
renderCats();filterProds('');renderTesti();syncCart();
document.getElementById('yr').textContent=new Date().getFullYear();
</script>
</body>
</html>
