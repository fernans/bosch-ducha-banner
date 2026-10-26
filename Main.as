package  {
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.events.MouseEvent;
	import flash.geom.Rectangle;
	import flash.net.URLRequest;
	import flash.net.navigateToURL;
	
	public class Main extends MovieClip {
		
		private var moving:Boolean=false;
		
		public function Main() {
			// constructor code
			//stop();
			addEventListener(Event.ENTER_FRAME, cargando);
			link.addEventListener(MouseEvent.CLICK, lanzarLink);
			//link.buttonMode=true;
		}
		
		public function cargando(e:Event) {
			var total:Number = this.stage.loaderInfo.bytesTotal;
			var loaded:Number = this.stage.loaderInfo.bytesLoaded;
			if (total == loaded){
				this.removeEventListener(Event.ENTER_FRAME, cargando);
				init();
			}
		}
		
		private function init(e:Event=null) {
			gotoAndStop(1,"principal");
			
			mujer.visible=true;
			hombre.visible=false;
			nino.visible=false;
			reset();
			
			bHombre.addEventListener(MouseEvent.CLICK, seleccionarHombre);
			bMujer.addEventListener(MouseEvent.CLICK, seleccionarMujer);
			bNino.addEventListener(MouseEvent.CLICK, seleccionarNino);
			
			bola.buttonMode=true;
			bola.addEventListener(MouseEvent.MOUSE_DOWN, down);
			stage.addEventListener(MouseEvent.MOUSE_MOVE, move);
			
			link.addEventListener(MouseEvent.CLICK, lanzarLink);
			//link.buttonMode=true;
		}
		
		private function lanzarLink(e:Event=null) {
			trace("lanzar link");
			navigateToURL(new URLRequest("http://elpoderdeunaduchabosch.com/"), "_blank");
		}
		
		private function seleccionarHombre(e:Event=null) {
			hombre.visible=true;
			mujer.visible=false;
			nino.visible=false;
			reset();
		}
		private function seleccionarMujer(e:Event=null) {
			mujer.visible=true;
			hombre.visible=false;
			nino.visible=false;
			reset();
		}
		
		private function seleccionarNino(e:Event=null) {
			nino.visible=true;
			mujer.visible=false;
			hombre.visible=false;
			reset();
		}
		
		private function reset() {
			bola.x=barra.x;
			bola.y=barra.y-bola.height*0.5;
			hombre.gotoAndStop(1);
			mujer.gotoAndStop(1);
			nino.gotoAndStop(1);
		}
		
		private function down(e:MouseEvent) {
			bola.startDrag(false,new Rectangle(barra.x,barra.y-bola.height*0.5,barra.width-(bola.width*0.5),0));
		}
		private function move(e:MouseEvent) {
			
			var pos:Number=Math.floor(bola.x-barra.x); // absoluto
			pos=pos/(barra.width-(bola.width*0.5));	// canonico (0..1)
			hombre.gotoAndStop(Math.floor(pos*hombre.totalFrames)+1); // frames (1..191 inclusivos)
			mujer.gotoAndStop(Math.floor(pos*mujer.totalFrames)+1); 
			nino.gotoAndStop(Math.floor(pos*nino.totalFrames)+1); 
			
			// mouse up (donde sea) termina drag
			if (!e.buttonDown) {
				bola.stopDrag();
				return;
			}
		}
		
	}
	
}
