
import luxe.Vector;
import luxe.Input;
import luxe.Text;
import luxe.Color;
import luxe.Rectangle;

class Main extends luxe.Game {


    override function ready() {

            //The first three don't need to exist in the default scene
            //so we can tell it not to add them there with no_scene : true

        new Text({
            no_scene : true,
            color : new Color(),
            text : "left && top",
            bounds : new Rectangle(50,50,200,100),
            align : TextAlign.left,
            align_vertical : TextAlign.top,
            size : 24
        });

        new Text({
            no_scene : true,
            color : new Color(),
            text : "right && center",
            bounds : new Rectangle(250,50,200,100),
            align : TextAlign.right,
            align_vertical : TextAlign.center,
            size : 24
        });

        new Text({
            no_scene : true,
            color : new Color(),
            text : "center && bottom",
            bounds : new Rectangle(450,50,200,100),
            align : TextAlign.center,
            align_vertical : TextAlign.bottom,
            size : 24
        });

        Luxe.draw.rectangle({x:50,y:50,w:200,h:100});
        Luxe.draw.rectangle({x:250,y:50,w:200,h:100});
        Luxe.draw.rectangle({x:450,y:50,w:200,h:100});

            //This one wants to be in the scene, so that
            //it can update its components

        text_with_component = new Text({
            name : 'enginetext',
            color : new Color().rgb(0xff4b03),
            font : Luxe.loadFont('font.fnt', 'assets/fonts/' ),
            text : "luxeengine.com",
            pos : Luxe.screen.mid,
            align : TextAlign.center,
            size : 25
        });

        text_with_component.add(new BounceTest({ name:'bounce' }));

    } //ready

    var text_with_component:Text;

    override function onkeyup( e:KeyEvent ) {

        if(e.keycode == Key.escape) {
            Luxe.shutdown();
        }

    } //onkeyup


} //Main
