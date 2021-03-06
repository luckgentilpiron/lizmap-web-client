<?php
class viewListener extends jEventListener{

   function onmasteradminGetInfoBoxContent ($event) {

        $home = new masterAdminMenuItem('home', jLocale::get("view~default.repository.list.title"), jUrl::get('view~default:index'));
        $home->icon = True;
        $event->add($home);

   }

    function ongetMapAdditions ($event) {
        $bp = jApp::config()->urlengine['basePath'];

        /*
        Use this listener in your modules to make Lizmap
        load javascripts and css files in the map
        You should pass an array like this
        $js = array(
            $bp.'js/example/example.js'
        );
        $jscode = array(
            ' var somevar = "something"; '
        );
        $css = array(
            $bp.'css/example/example.css'
        );
        The listed files must be added by the module in lizmap/www by the installation script
        */
        $js = array();
        $jscode = array();
        $css = array();
        $event->add(
            array(
                'js' => $js,
                'jscode' => $jscode,
                'css' => $css
            )
        );
    }

}
?>
