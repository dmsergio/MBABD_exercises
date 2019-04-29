# Master Business Analytics and Big Data exercises

Configuración del entorno
-------------------------

Como se va a utilizar diferentes lenguajes de programación, ya sea Python, R, etc., la mejor opción para evitar conflictos entre paquetes y librerias es la utilización de un entorno virtual específico para instalar los diferentes paquetes y comenzar el desarrollo sin ningún problema.

Antes de comenzar, comentar que utilizo la shell **fish**, la cual no es compatible al 100% con la sintaxis de bash (la más comunmente utilizada). Para más info visitar su web oficial en <https://fishshell.com>.

* **Entorno virtual**

  Creación del entorno virtual utilizando **Python3** como base:
  ```
  vf new -p python3 data_analysis
  ```
  Activar el entorno virtual:
  ```
  source ~/.virtualenvs/data_analysis/bin/activate.fish
  ```

* **Jupyter**

  Instalación de la herramienta **Jupyter** dentro del entorno virtual creado previamente:
  ```
  pip install --upgrade pip
  pip install jupyter
  ```

  Jupyter incorpora por defecto el intérprete de Python **iPython**, con el cual será posible crear notebooks sobre dicho lenguaje. Como se va a utilizar el lenguaje R, será necesario instalar tanto el core del lenguaje como el intérprete para Jupyter.

* **R**

  Instalación del core de R:
  ```
  sudo apt-get install r-base r-base-dev
  ```
  Únicamente faltaría instalar el intérprete de R, llamado **IRkernel**, estando el entorno virtual activado:
  ```
  install.packages('IRkernel')
  IRkernel::installspec()
  ```
