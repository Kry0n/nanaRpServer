resource_manifest_version "05cfa83c-a124-4cfa-a768-c24a5811d8f9"

this_is_a_map 'yes'

files {'int_medical.ytyp',
'_manifest.ymf'}
data_file 'DLC_ITYP_REQUEST' 'int_medical.ytyp'

client_script "ipl.lua"