**Langkah-langkah run project**
- Import db
- Composer update
- Composer Install
- php artisan serve


Cara seed =
Php artisan tinker
buat var $user = new App\Models\User; (Lokasi modelsnya)
bisa juga $user = new User;
$user->name = 'Isi nama';
$user->password = bcrypt('isi pass')
Boleh pake ; boleh engga
$user->save();
user = new User = Kalo mau nambahin baru
$user->all() = Mencari semua data yang tadi udah dimasukkin
$user->first() = Mencari id pertama
$user->find(2) = Mencari id tertentu
User::pluck('title') Ngambil semua judul
$user->findOrFail(200) = Kaloa gada id 200, maka tampilkan errornya
Kalo cuma pake find, nanti cuma tampil null

LEBIH GAMPANG PAKE
Post::all() Pake nama modelnya aja


CARA LEBIH GAMPANG LAGI BUAT SEED
Post::create([
    'title' => 'Judul ke empat',
    'excerpt' => 'Ini adalah excerpt ke empat',
    'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nostrum quaerat, repellat voluptas dolore id exercitationem mollitia odio rem suscipit molestias dolores veritatis laborum tenetur enim optio libero dolorum, doloribus doloremque necessitatibus quos? Ea, accusantium! Possimus omnis reiciendis officia nobis sit at esse porro ratione alias, odit ut itaque optio magnam.</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore sunt et, sit rem animi velit aspernatur libero illum rerum dolores!</p><p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Iure, ipsum?</p>'
])

Post::find(2)->update(['title' => 'Mau diganti apa']) Ini berdasarkan id
Post::where('title', 'Cari judulnya')->update(['excerpt' => 'Excerpt berubah']) Berdasarkan apapun

