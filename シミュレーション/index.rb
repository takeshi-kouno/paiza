#標準入力受取
 HP = gets.to_i

#初期設定
count = 0
paiza,monter = [],[]

#攻撃計算
def attack(HP)
    #HPが０超えるまで繰り返す
    while HP > 0
        count += 1

        #２回目まで攻撃１
        if count <=2
            paiza,monster << 1,1
        else
            #３回目以降の攻撃
            paiza << monster[count - 2] + monter[count - 3]
            monster << paiza[count - 2] * 2 + paiza[count - 3]
        end
        #
    end
end