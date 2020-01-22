resource_manifest_version "44febabe-d386-4d18-afbe-5e627f4af937"

client_script {
    "config.lua",
    "rgz_menu.lua"
}

ui_page "menu.html"

files {
    "menu.html",
    "rgz_kolo.css",
    "img/backpack.png",
    "img/check.png",
    "img/dance.png",
    "img/id.png",
    "img/pager-work.png",
    "img/phone.png"
}
dependencies {
    'es_extended',
    'esx_billing',
    'idcard',
    'esx_policejob',
    'esx_mechanicjob',
    'esx_taxijob',
    'esx_inventoryhud',
    'gcphone'
}

