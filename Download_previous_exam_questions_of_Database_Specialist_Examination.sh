#!/bin/sh

# Database Specialist Examination (データベーススペシャリスト試験)
# You can download previous exam questions. (過去問題一括ダウンロード)


# AM2

# Questions AM2
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_am2_qs.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_am2_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_am2_qs.pdf

# Answers AM2
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_am2_ans.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_am2_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_am2_ans.pdf


# PM1

# Questions PM1
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_pm1_qs.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_pm1_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm1_qs.pdf

# Answers PM1
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_pm1_ans.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_pm1_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm1_ans.pdf

# Comment PM1
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_pm1_cmnt.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_pm1_cmnt.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm1_cmnt.pdf


# PM2

# Questions PM2
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_pm2_qs.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_pm2_qs.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm2_qs.pdf

# Answers PM2
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_pm2_ans.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_pm2_ans.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm2_ans.pdf

# Comment PM2
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2009h21_1/2009h21h_db_pm2_cmnt.pdf
# ...
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2019h31_1/2019h31h_db_pm2_cmnt.pdf
# https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm2_cmnt.pdf

echo "Start!!"

# 2009-2019
for ((i=0;i<11;i++))
do
	YYYY=$(( 2009 + $i ))
	WW=$(( 21 + $i ))
	if [ ! -d ${YYYY}_h${WW}_haru ]; then
		mkdir ${YYYY}_h${WW}_haru
	fi
	# AM2
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_am2_qs.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_am2_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_am2_ans.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_am2_ans.pdf
	# PM1
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_pm1_qs.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_pm1_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_pm1_ans.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_pm1_ans.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_pm1_cmt.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_pm1_cmt.pdf
	# PM2
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_pm2_qs.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_pm2_qs.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_pm2_ans.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_pm2_ans.pdf
	curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_${YYYY}h${WW}_1/${YYYY}h${WW}h_db_pm2_cmt.pdf > ./${YYYY}_h${WW}_haru/${YYYY}h${WW}h_db_pm2_cmt.pdf
done

# 2020
if [ ! -d 2020_r02_oct ]; then
	mkdir 2020_r02_oct
fi
# AM2
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_am2_qs.pdf > ./2020_r02_oct/2020r02o_db_am2_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_am2_ans.pdf > ./2020_r02_oct/2020r02o_db_am2_ans.pdf
# PM1
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm1_qs.pdf > ./2020_r02_oct/2020r02o_db_pm1_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm1_ans.pdf > ./2020_r02_oct/2020r02o_db_pm1_ans.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm1_cmt.pdf > ./2020_r02_oct/2020r02o_db_pm1_cmt.pdf
# PM2
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm2_qs.pdf > ./2020_r02_oct/2020r02o_db_pm2_qs.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm2_ans.pdf > ./2020_r02_oct/2020r02o_db_pm2_ans.pdf
curl https://www.jitec.ipa.go.jp/1_04hanni_sukiru/mondai_kaitou_2020r02_oct/2020r02o_db_pm2_cmt.pdf > ./2020_r02_oct/2020r02o_db_pm2_cmt.pdf

echo "Finish!!"