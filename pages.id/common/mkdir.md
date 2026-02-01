# mkdir

> Membuat direktori dan mengatur izin aksesnya.
> Informasi lebih lanjut: <https://www.gnu.org/software/coreutils/manual/html_node/mkdir.html>.

- Membuat direktori tertentu:

`mkdir {{path/to/directory1 path/to/directory2 ...}}`

- Membuat direktori tertentu beserta induknya jika diperlukan:

`mkdir {{[-p|--parents]}} {{path/to/directory1 path/to/directory2 ...}}`

- Membuat direktori dengan izin akses tertentu:

`mkdir {{[-m|--mode]}} {{rwxrw-r--}} {{path/to/directory1 path/to/directory2 ...}}`

- Membuat banyak direktori bersarang secara rekursif:

`mkdir {{[-p|--parents]}} {{path/to/{a,b}/{x,y,z}/{h,i,j}}}`
