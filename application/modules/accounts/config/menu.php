<?php

// module name
$HmvcMenu["accounts"] = array(
    //set icon
    "icon"           => "<i class='ti-bag'></i>", 

    // stockmovment
   "c_o_a" => array( 
        "controller" => "show_tree",
        "method"     => "C_O_A",
        "permission" => "read"
    ), 
   
      "debit_voucher" => array( 
        "controller" => "accounts",
        "method"     => "debit_voucher",
        "permission" => "create"
    ), 
   "credit_voucher" => array( 
        "controller" => "accounts",
        "method"     => "credit_voucher",
        "permission" => "read"
    ), 
    "contra_voucher" => array( 
        "controller" => "accounts",
        "method"     => "contra_voucher",
        "permission" => "read"
    ),
     "journal_voucher" => array( 
        "controller" => "accounts",
        "method"     => "journal_voucher",
        "permission" => "read"
    ),  
      "voucher_approval" => array( 
        "controller" => "accounts",
        "method"     => "aprove_v",
        "permission" => "create"
    ), 
      
       "account_report" => array( 
				        "voucher_report" => array( 
				          "controller" => "accounts",
				          "method"     => "voucher_report",
				          "permission" => "read"
				    ), 

				         "cash_book" => array( 
					        "controller" => "accounts",
					        "method"     => "cash_book",
					        "permission" => "read"
					    ), 
				          "bank_book" => array( 
					        "controller" => "accounts",
					        "method"     => "bank_book",
					        "permission" => "read"
					    ), 
				     //      "income_expense" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
				          "general_ledger" => array( 
					        "controller" => "accounts",
					        "method"     => "general_ledger",
					        "permission" => "read"
					    ), 
				           "trial_balance" => array( 
					        "controller" => "accounts",
					        "method"     => "trial_balance",
					        "permission" => "read"
					    ),
					     "profit_loss" => array( 
					        "controller" => "accounts",
					        "method"     => "profit_loss_report",
					        "permission" => "read"
					    ),
					    // "check_status" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "check_status_report",
					    //     "permission" => "read"
					    // ), 
					    // "receipt_payment" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
					    // "money_receipt" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
					    // "debit_voucher" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
					    // "all_voucher" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
					   "cash_flow" => array( 
					        "controller" => "accounts",
					        "method"     => "cash_flow_report",
					        "permission" => "read"
					    ),
					    // "stmt_of_financial_position" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
					    // "stmt_changes_equity" => array( 
					    //     "controller" => "accounts",
					    //     "method"     => "C_O_A",
					    //     "permission" => "read"
					    // ), 
					    "coa_print" => array( 
					        "controller" => "accounts",
					        "method"     => "coa_print",
					        "permission" => "read"
					    ),  
    ), 
);
   

 