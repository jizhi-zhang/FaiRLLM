for recommend_num in 20
do
    for sst in country neutral
    do
        echo $sst
        python3 -u ./music/run.py \
        --singer_list ./music/10000-MTV-Music-Artists-page-1.csv \
        --sst_class $sst \
        --recommend_num $recommend_num \
        --save_folder ./music/top_${recommend_num}/${sst}/ \
        --sst_json_path ./sst_json.json \
        --api_key your_api_key
    done
done
