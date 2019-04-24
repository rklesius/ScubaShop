<h1>Scuba Shop</h1>
<p>A Scuba shop simulator for Database Design at the University of South Florida</p>

<h2>Installing the right gems with Ruby</h2>
<p>sqlite3 needs some help with working with ruby in windows. To get it to run, use the following commands: </p>
<ul>
    <li>gem uninstall sqlite3 --all</li>
    <li>ridk exec pacman -S mingw-w64-x86_64-sqlite3</li>
    <li>gem inst sqlite3 --platform ruby</li>
</ul>
<p>Other than that, the only other gem you need to install is Sinatra, using gem install sinatra</p>
<p>If having an error stating "missing dlopen" use the following command:"</p>
<p>$ ridk exec pacman -S mingw-w64-x86_64-dlfcn</p>
<h2>Running the program</h2>
<p>To run the program, run the following files in this order:</p>
<p><em>scubashop.rb</em> will initialize the data in the database, both creating the table and adding some data.  </p>
<p><em>main.rb</em> will then start the webpage on http://localhost:4567/, this webpage will not work unless scubashop.rb is run first</p>

