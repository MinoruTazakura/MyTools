#!/bin/sh

# Applied Information Technology Engineer Examination (応用情報技術者試験)
# You can download previous exam questions. (過去問題一括ダウンロード)

# Questons AM
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_2/2009h21a_ap_am_qs.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_1/2018h30h_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_2/2018h30a_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_qs.pdf

# Questons PM
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_ap_pm_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_2/2009h21a_ap_pm_qs.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_1/2018h30h_ap_pm_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_2/2018h30a_ap_pm_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_pm_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_pm_qs.pdf

# Answers AM
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_2/2009h21a_ap_am_ans.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_1/2018h30h_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_2/2018h30a_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_ans.pdf

# Answers PM
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_ap_pm_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_2/2009h21a_ap_pm_ans.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_1/2018h30h_ap_pm_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2018h30_2/2018h30a_ap_pm_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_pm_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_pm_ans.pdf

echo "Start!!"

# 2009-2018
for ((i=0;i<10;i++))
do
	YYYY=$(( 2009 + $i ))
	WW=$(( 21 + $i ))
	if [ ! -d ${YYYY}_h${WW}_01_haru ]; then
		mkdir ${YYYY}_h${WW}_01_haru
	fi
	if [ ! -d ${YYYY}_h${WW}_02_aki ]; then
		mkdir ${YYYY}_h${WW}_02_aki
	fi
	# 春 AM
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_ap_am_qs.pdf > ./${YYYY}_h${WW}_01_haru/${YYYY}h${WW}h_ap_am_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_ap_am_ans.pdf > ./${YYYY}_h${WW}_01_haru/${YYYY}h${WW}h_ap_am_ans.pdf
	# 春 PM
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_ap_am_qs.pdf > ./${YYYY}_h${WW}_01_haru/${YYYY}h${WW}h_ap_pm_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_ap_am_ans.pdf > ./${YYYY}_h${WW}_01_haru/${YYYY}h${WW}h_ap_pm_ans.pdf
	# 秋 AM
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_2/${YYYY}h${WW}a_ap_am_qs.pdf > ./${YYYY}_h${WW}_02_aki/${YYYY}h${WW}a_ap_am_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_2/${YYYY}h${WW}a_ap_am_ans.pdf > ./${YYYY}_h${WW}_02_aki/${YYYY}h${WW}a_ap_am_ans.pdf
	# 秋 PM
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_2/${YYYY}h${WW}a_ap_am_qs.pdf > ./${YYYY}_h${WW}_02_aki/${YYYY}h${WW}a_ap_pm_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_2/${YYYY}h${WW}a_ap_am_ans.pdf > ./${YYYY}_h${WW}_02_aki/${YYYY}h${WW}a_ap_pm_ans.pdf
done

# 2019
if [ ! -d 2019_h31_01_haru ]; then
	mkdir 2019_h31_01_haru
fi
if [ ! -d 2019_r01_02_aki ]; then
	mkdir 2019_r01_02_aki
fi
# 春 AM
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_qs.pdf > ./2019_h31_01_haru/2019h31h_ap_am_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_ans.pdf > ./2019_h31_01_haru/2019h31h_ap_am_ans.pdf
# 春 PM
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_qs.pdf > ./2019_h31_01_haru/2019h31h_ap_pm_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_ap_am_ans.pdf > ./2019_h31_01_haru/2019h31h_ap_pm_ans.pdf
# 秋 AM
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_qs.pdf > ./2019_r01_02_aki/2019r01a_ap_am_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_ans.pdf > ./2019_r01_02_aki/2019r01a_ap_am_ans.pdf
# 秋 PM
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_qs.pdf > ./2019_r01_02_aki/2019r01a_ap_pm_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_2/2019r01a_ap_am_ans.pdf > ./2019_r01_02_aki/2019r01a_ap_pm_ans.pdf

echo "Finish!!"