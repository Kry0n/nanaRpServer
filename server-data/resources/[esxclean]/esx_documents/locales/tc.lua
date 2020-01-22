Locales['tc'] = {
    ['document_deleted'] = "文件已被 ~g~刪除~w~.",
    ['document_delete_failed'] = "文件刪除 ~r~失敗~w~.",
    ['copy_from_player'] = "你從其他玩家身上 ~g~得到~w~ 一個文件影本.",
    ['from_copied_player'] = "文件 ~g~影本~w~ 給玩家",
    ['could_not_copy_form_player'] = "~r~不可以~w~ 複製文件給玩家.",
    ['document_options'] = "文件選項",
    ['public_documents'] = "公用文件",
    ['job_documents'] = "職業文件",
    ['saved_documents'] = "儲存文件",
    ['close_bt'] = "關閉",
    ['no_player_found'] = "沒有找到玩家",
    ['go_back'] = "返回",
    ['view_bt'] = "預覽",
    ['show_bt'] = "呈現",
    ['give_copy'] = "給予影本",
    ['delete_bt'] = "刪除",
    ['yes_delete'] = "是的，刪除",
}

Config.Documents['tc'] = {
      ["public"] = {
        {
          headerTitle = "加盟表格",
          headerSubtitle = "公民確認書.",
          elements = {
            { label = "認可內容", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "證人證詞",
          headerSubtitle = "官方證人證詞.",
          elements = {
            { label = "發生日期", type = "input", value = "", can_be_emtpy = false },
            { label = "證明內容", type = "textarea", value = "", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "車輛販賣證明",
          headerSubtitle = "車輛販賣證明予以其他市民.",
          elements = {
            { label = "車牌號碼", type = "input", value = "", can_be_emtpy = false },
            { label = "市民名稱", type = "input", value = "", can_be_emtpy = false },
            { label = "同意價格", type = "input", value = "", can_be_empty = false },
            { label = "其他資訊", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "對公民的債務聲明",
          headerSubtitle = "對另一位公民的官方債務聲明.",
          elements = {
            { label = "借權人名", type = "input", value = "", can_be_emtpy = false },
            { label = "借權人姓", type = "input", value = "", can_be_emtpy = false },
            { label = "應付金額", type = "input", value = "", can_be_empty = false },
            { label = "期限", type = "input", value = "", can_be_empty = false },
            { label = "其他資訊", type = "textarea", value = "", can_be_emtpy = true },
          }
        },
        {
          headerTitle = "債務清算聲明(借據)",
          headerSubtitle = "宣告另一位公民的債務清算.",
          elements = {
            { label = "債務人名", type = "input", value = "", can_be_emtpy = false },
            { label = "債務人姓", type = "input", value = "", can_be_emtpy = false },
            { label = "應付金額", type = "input", value = "", can_be_empty = false },
            { label = "其他資訊", type = "textarea", value = "I HEREBY DECLARE THAT THE AFOREMENTIONED CITIZEN HAS COMPLETED A PAYMENT WITH THE AFOREMENTIONED DEBT AMOUNT", can_be_emtpy = false, can_be_edited = false },
          }
        }
      },
      ["police"] = {
        {
          headerTitle = "特殊停車允許",
          headerSubtitle = "特殊的無限制停車許可證.",
          elements = {
            { label = "持有人名", type = "input", value = "", can_be_emtpy = false },
            { label = "持有人姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "其他資訊", type = "textarea", value = "THE AFOREMENTIONED CITIZEN HAS BEEN GRANTED UNLIMITED PARKING PERMIT IN EVERY CITY ZONE AND IS VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "持有槍證",
          headerSubtitle = "警察提供的特殊槍支許可證.",
          elements = {
            { label = "持有人名字", type = "input", value = "", can_be_emtpy = false },
            { label = "持有人名", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "其他資訊", type = "textarea", value = "THE AFOREMENTIONED CITIZEN IS ALLOWED AND GRANTED A GUN PERMIT WHICH WILL BE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "清白公民犯罪記錄",
          headerSubtitle = "官方清白，通用，公民犯罪記錄.",
          elements = {
            { label = "市民名", type = "input", value = "", can_be_emtpy = false },
            { label = "市民姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "紀錄", type = "textarea", value = "THE POLICE HEREBY DECLARES THAT THE AFOREMENTIONED CITIZEN HOLDS A CLEAR CRIMINAL RECORD. THIS RESULT IS GENERATED FROM DATA SUBMITTED IN THE CRIMINAL RECORD SYSTEM BY THE DOCUMENT SIGN DATE.", can_be_emtpy = false, can_be_edited = false },
          }         }
      },
      ["ambulance"] = {
        {
          headerTitle = "醫學報告-病理報告",
          headerSubtitle = "病理學家提供的正式醫療報告.",
          elements = {
            { label = "傷患名", type = "input", value = "", can_be_emtpy = false },
            { label = "傷患姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "醫療紀錄", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN WAS TESTED BY A HEALTHCARE OFFICIAL AND DETERMINED HEALTHY WITH NO DETECTED LONGTERM CONDITIONS. THIS REPORT IS VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "醫學報告-心理報告",
          headerSubtitle = "心理學家提供的正式醫學報告.",
          elements = {
            { label = "傷患名", type = "input", value = "", can_be_emtpy = false },
            { label = "傷患姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "醫療紀錄", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN WAS TESTED BY A HEALTHCARE OFFICIAL AND DETERMINED MENTALLY HEALTHY BY THE LOWEST APPROVED PSYCHOLOGY STANDARDS. THIS REPORT IS VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "醫學報告-眼科專家",
          headerSubtitle = "眼科專家提供的正式醫療報告.",
          elements = {
            { label = "傷患名", type = "input", value = "", can_be_emtpy = false },
            { label = "傷患姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "醫療紀錄", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN WAS TESTED BY A HEALTHCARE OFFICIAL AND DETERMINED WITH A HEALTHY AND ACCURATE EYESIGHT. THIS REPORT IS VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        },
        {
          headerTitle = "特殊藥物使用許可證",
          headerSubtitle = "官方醫用大麻使用許可證.",
          elements = {
            { label = "傷患名", type = "input", value = "", can_be_emtpy = false },
            { label = "傷患姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "醫療紀錄", type = "textarea", value = "THE AFOREMENTIONED INSURED CITIZEN IS GRANTED, AFTER BEING THOROUGHLY EXAMINED BY A HEALTHCARE SPECIALIST, MARIJUANA USAGE PERMIT DUE TO UNDISCLOSED MEDICAL REASONS. THE LEGAL AND PERMITTED AMOUNT A CITIZEN CAN HOLD CAN NOT BE MORE THAN 100grams.", can_be_emtpy = false, can_be_edited = false },
          }
        },

      ["avocat"] = {
        {
          headerTitle = "法律服務合同",
          headerSubtitle = "律師提供的法律服務合同.",
          elements = {
            { label = "市民名", type = "input", value = "", can_be_emtpy = false },
            { label = "市民姓", type = "input", value = "", can_be_emtpy = false },
            { label = "有效期限", type = "input", value = "", can_be_empty = false },
            { label = "其他資訊", type = "textarea", value = "THIS DOCUMENT IS PROOF OF LEGAL REPRESANTATION AND COVERAGE OF THE AFOREMENTIONED CITIZEN. LEGAL SERVICES ARE VALID UNTIL THE AFOREMENTIONED EXPIRATION DATE.", can_be_emtpy = false },
          }
        }
      }
    }
  }
