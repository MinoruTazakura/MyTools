#!/bin/sh

# Applied Information Technology Engineer Examination (応用情報技術者試験)
# You can download previous exam questions. (過去問題一括ダウンロード)

# Questons
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_2/2009h21a_ap_am_qs.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_1/2018h30h_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_2/2018h30a_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_qs.pdf

# Answers
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_2/2009h21a_ap_am_ans.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_1/2018h30h_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_2/2018h30a_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_ans.pdf

echo "Start!!"

if [ ! -d Questions ]; then
    mkdir Questions
fi

if [ ! -d Answers ]; then
    mkdir Answers
fi

for ((i=0;i<10;i++))
do
	YYYY=$(( 2009 + $i ))
	WW=$(( 21 + $i ))
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_ap_am_qs.pdf > ./Questions/${YYYY}h${WW}h_ap_am_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_2/${YYYY}h${WW}a_ap_am_qs.pdf > ./Questions/${YYYY}h${WW}a_ap_am_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_ap_am_ans.pdf > ./Answers/${YYYY}h${WW}h_ap_am_ans.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_2/${YYYY}h${WW}a_ap_am_ans.pdf > ./Answers/${YYYY}h${WW}a_ap_am_ans.pdf
done

curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_qs.pdf > ./Questions/2019h31h_ap_am_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_qs.pdf > ./Questions/2019r01a_ap_am_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_ans.pdf > ./Answers/2019h31h_ap_am_ans.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_ans.pdf > ./Answers/2019r01a_ap_am_ans.pdf

echo "Finish!!"
