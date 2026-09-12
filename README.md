Desplegar un core 5G funcional (Open5GS) junto con un gNB y un UE simulados (UERANSIM), completamente contenerizado con containerlab, incluyendo:
Registro de Network Functions (NFs) vía NRF/SCP.
Señalización N2 real entre gNB y AMF (NGAP sobre SCTP).
Autenticación y gestión de suscriptores (AUSF/UDM/UDR + MongoDB).
Política de sesión (PCF) y plano de datos con interfaz TUN (UPF).
Un UE simulado que se registra, se autentica y establece una sesión PDU (uesimtun0).
Panel de administración web (Open5GS WebUI) para gestionar suscriptores.
Visualización de la topología con TopoViewer.

Comandos de despliegue:

containerlab deploy -t lab-5g-open5gs.clab.yml
containerlab inspect --all
