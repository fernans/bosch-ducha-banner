# bosch-ducha-banner

Interactive banner for the Bosch campaign **"El poder de una ducha"** ("The power of a shower"), developed with Flash / ActionScript 3.

Mechanics (see [`Main.as`](Main.as)): a shower knob ("bola") can be dragged along a bar (`barra`) with the mouse; its position drives the frame scrubbing (1 to 191 frames) of three exclusive swim-movements — `mujer` (woman), `hombre` (man) and `nino` (kid) — selectable with three buttons, simulating how each character gets soaked while the knob is pulled. Clicking anywhere on the visible link opens the campaign microsite `elpoderdeunaduchabosch.com`.

Delivered versions kept in-tree:

| File | Version |
|---|---|
| `bosch.swf` (173 KB) + `bosch.fla` (64 MB, main source) | main delivery (full frames) |
| `completo/bosch_completo.swf` (5,5 MB) | complete expanded delivery |
| `solo120f/bosch.swf` (3,2 MB) | trimmed variant to the 120-frame ad slot |

`material/` keeps the exported graphic assets used by the FLAs (`fondo.jpg`, `ref.png`, `barra.png`, `grifo.png`, `bola.png`).

> **This project is shared ONLY for educational purposes. Its use, direct or derived, for professional or economic purposes is not permitted.**

For security reasons, some parts of the project may have been edited or removed: the duplicated variant FLAs and the Flash IDE movie reports (`*Report.txt`) are excluded; everything else is published as-is.

## Requirements / How to run

- Any SWF player (or the standard `bosch.html` wrapper — a Flash Player browser plugin or standalone Flash Projector) to preview; the drag mechanic is mouse-only.
- To rebuild the main version: open `bosch.fla` in Flash Professional (CS-era) and publish; the document uses the exported assets in `material/` as bitmaps.
- The link-out target is the original 2010s-era campaign microsite, which is no longer online.

No warranty of any kind is provided, and no liability is accepted for errors or damages resulting from its use of this software.

Additionally, the use of this project's content (code, documentation or assets) to train artificial intelligence or machine-learning systems is not permitted without the explicit permission of the author. Licensed under [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) — see [`LICENSE`](LICENSE).

---

# bosch-ducha-banner

Banner interactivo para la campaña de Bosch **"El poder de una ducha"**, desarrollado con Flash / ActionScript 3.

Mecánica (ver [`Main.as`](Main.as)): un pomo de ducha ("bola") se arrastra con el ratón a lo largo de una barra (`barra`); su posición recorre los fotogramas (1 a 191) de tres secuencias exclusivas — `mujer`, `hombre` y `nino` — seleccionables con tres botones, simbolizando cómo se cala cada personaje a medida que se tira del pomo. Pulsando el enlace visible se abre el micrositio de campaña `elpoderdeunaduchabosch.com`.

Versiones entregadas conservadas en el árbol:

| Archivo | Versión |
|---|---|
| `bosch.swf` (173 KB) + `bosch.fla` (64 MB, fuente principal) | entrega principal (frames completos) |
| `completo/bosch_completo.swf` (5,5 MB) | entrega completa ampliada |
| `solo120f/bosch.swf` (3,2 MB) | variante recortada al slot publicitario de 120 frames |

`material/` guarda los assets gráficos exportados que usan los FLAs (`fondo.jpg`, `ref.png`, `barra.png`, `grifo.png`, `bola.png`).

> **Este proyecto se comparte SOLO con valor educativo. No está permitido su uso (directo o derivado) para fines profesionales o económicos.**

Por motivos de seguridad, algunas partes del proyecto pueden encontrarse editadas o eliminadas: los FLA duplicados de las variantes y los informes de película de la IDE Flash (`*Report.txt`) están excluidos; todo lo demás se publica tal cual.

## Requisitos / Cómo ejecutar

- Cualquier reproductor SWF (o el envoltorio estándar `bosch.html` — plugin de Flash Player en navegador, o Flash Projector standalone) para previsualizar; la mecánica de arrastre es solo con ratón.
- Para recompilar la versión principal: abrir `bosch.fla` en Flash Professional (era CS) y publicar; el documento usa los assets exportados de `material/` como bitmaps.
- El destino del enlace era el micrositio de campaña de los 2010, que ya no está en línea.

Este software se suministra sin garantía de ningún tipo, y no se asume ninguna responsabilidad por errores o daños que puedan producirse a partir de su uso.

Adicionalmente, no está permitido el uso del contenido de este proyecto (código, documentación o assets) para entrenar sistemas de inteligencia artificial o de aprendizaje automático sin el permiso explícito del autor. Licenciado bajo [CC BY-NC 4.0](https://creativecommons.org/licenses/by-nc/4.0/) — ver [`LICENSE`](LICENSE).
