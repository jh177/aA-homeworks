document.addEventListener("DOMContentLoaded", function(){
  const canvas = document.getElementById('mycanvas');
  canvas.width = 500;
  canvas.height = 500;
  
  const ctx = canvas.getContext('2d');

  //fill rectangle
  ctx.fillStyle = "red";
  ctx.fillRect(0, 0, 500, 500);

  //draw circle
  ctx.beginPath();
  ctx.arc(100, 75, 50, 0, 2 * Math.PI);
  ctx.strokeStyle = "blue";
  ctx.lineWidth = 2;
  ctx.stroke();

  //fill in circle
  ctx.fillStyle = "white";
  ctx.fill();

});
