# FaiRLLM
The code for "Is ChatGPT Fair for Recommendation? Evaluating Fairness in Large Language Model Recommendation"
Here is our FaiRLLM benchmark.

run run_music.sh or movie.sh to get the ChatGPT response.
```
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
```
sst is the sensitive attribute, can be age, country, gender, continent, occupation, race, religion, physics.
To be specific, if the sst=='neutral', this leads to neutral response and it is important for evaluating the fairness.

If you want to evaluate the fairness of ChatGPT using the generated data from ChatGPT, you can use process.ipynb
Before using process.ipynb, please check the following in the begining of process.ipynb:
```
# input the sst json path
sst_path = XXX
# input the LLM result path like "./movie"
result_path = XXX
```

