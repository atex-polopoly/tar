include_recipe 'seven_zip::default'

action untar do
    provides :extract_local, os: 'windows'
    
    seven_zip_archive new_resource.source do
        path new_resource.target_dir
        source new_resource.source 
        overwrite true
    end
end

