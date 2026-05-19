<style>
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
  }

  body {
    background: radial-gradient(circle at center, #0f2027, #000000);
    font-family: 'Segoe UI', sans-serif;
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
    color: white;
  }

  .dashboard {
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
  }

  .titulo {
    position: absolute;
    top: 40px;
    font-size: 1.5em;
    letter-spacing: 5px;
    color: #00eaff;
    text-transform: uppercase;
  }

  .valor-grande {
    font-size: 9em;
    font-weight: bold;
    text-shadow: 0 0 25px rgba(0,255,255,0.7);
  }

  .unidad {
    font-size: 0.2em;
    color: #ccc;
  }

  .barra-contenedor {
    width: 60%;
    height: 20px;
    background: rgba(255,255,255,0.1);
    border-radius: 20px;
    margin-top: 40px;
    overflow: hidden;
  }

  .barra {
    height: 100%;
    width: 50%;
    background: linear-gradient(90deg, #00eaff, #00ff88);
    border-radius: 20px;
    animation: movimiento 2s infinite alternate;
  }

  @keyframes movimiento {
    from { filter: brightness(0.8); }
    to { filter: brightness(1.3); }
  }

  .estado {
    margin-top: 25px;
    font-size: 1.2em;
    letter-spacing: 2px;
    color: #ffcc00;
  }
</style>

<div class="dashboard">
  <div class="titulo">Sistema de Monitoreo Ultrasónico</div>

  <div class="valor-grande">
    {{value | number:2}} <span class="unidad">cm</span>
  </div>

  <div class="barra-contenedor">
    <div class="barra"></div>
  </div>

  <div class="estado">
    Sensor Activo • Lectura en Tiempo Real
  </div>
</div>
