<h1>Scuba Shop</h1>
<p>A Scuba shop simulator for Database Design at the University of South Florida</p>

<h2>How to run</h2>
<p>sqlite3 needs some help with working with ruby in windows. To get it to run, use the following commands: </p>
<ul>
    <li>gem uninstall sqlite3 --all</li>
    <li>ridk exec pacman -S mingw-w64-x86_64-sqlite3</li>
    <li>gem inst sqlite3 --platform ruby</li>
</ul>
<p>Other than that, the only other gem you need to install is Sinatra, using gem install sinatra</p>