module RollsHelper

  def options_of_status
    [["未定", "0"],
     ["出席", "1"],
     ["欠席", "2"],
     #["欠席", "3"],
     ["振替", "4"],
     ["休会", "5"],
     ["休講", "6"],]
  end

  ROLL_STATUS = {
    "0" => { "name" => "未定", "label" => "label-default", "button" => "btn-default" },
    "1" => { "name" => "出席", "label" => "label-success", "button" => "btn-success" },
    "2" => { "name" => "欠席", "label" => "label-danger", "button" => "btn-danger" },
    #"3" => { "name" => "欠席", "label" => "label-warning", "button" => "btn-warning" },
    "4" => { "name" => "振替", "label" => "label-info", "button" => "btn-info" },
    "5" => { "name" => "休会", "label" => "label-default", "button" => "btn-default" },
    "6" => { "name" => "休講", "label" => "label-default", "button" => "btn-default" },
    "9" => { "name" => "取消", "label" => "label-default", "button" => "btn-default" },
  }

  def roll_status_name(status)
    ROLL_STATUS[status]["name"]
  end
  def roll_status_label(status)
    ROLL_STATUS[status]["label"]
  end

  def roll_status_button(status)
    ROLL_STATUS[status]["button"]
  end

end
