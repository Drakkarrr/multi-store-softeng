<?php
    class HTML
    {
        function dfsCP($HeadName,$HeadCode,$oResult,$visit,$d)
        {
            if($d==0) echo "<tr><td>$HeadName";
            else      echo "<tr><td><a href='javascript:' onclick=\"loadData('".base64_encode($HeadCode)."')\">$HeadName</a></td>";
            $p=0;
            for($i=0;$i<$oResult->num_rows;$i++)
            {
                if (!$visit[$i])
                {
                    if ($HeadName==$oResult->rows[$i]['PHeadName'])
                    {
                        $visit[$i]=true;
                        if($p==0) echo "<table>";
                        $p++;
                        $this->dfs($oResult->rows[$i]['HeadName'],$oResult->rows[$i]['HeadCode'],$oResult,$visit,$d+1);
                    }
                }
            }
            if($p==0)
                echo "</td></tr>";
            else
                echo "</table>";
        }
        
        function dfs($HeadName,$HeadCode,$oResult,$visit,$d)
        {
            print_r($oResult);exit;
            if($d==0) echo "<li>$HeadName";
            else      echo "<li><a href='javascript:' onclick=\"loadData('".base64_encode($HeadCode)."')\">$HeadName</a>";
            $p=0;
            for($i=0;$i<$oResult->num_rows;$i++)
            {
                if (!$visit[$i])
                {
                    if ($HeadName==$oResult->rows[$i]['PHeadName'])
                    {
                        $visit[$i]=true;
                        if($p==0) echo "<ul>";
                        $p++;
                        $this->dfs($oResult->rows[$i]['HeadName'],$oResult->rows[$i]['HeadCode'],$oResult,$visit,$d+1);
                    }
                }
            }
            if($p==0)
                echo "</li>";
            else
                echo "</ul>";
        }
        
        function dfsMenu($MenuName,$PageLink,$oResultHeader,$visit,$d,$MotherMenu)
        {
            if($d>=1)
            {
                if(in_array($MenuName,$MotherMenu))
                {
                    if($d==1)
                    {
                        if($_SESSION['Module_Name']==$MenuName)
                                echo "<li class='active'><a href=\"$PageLink\" id=\"$MenuName\"><span><img src=\"./menu icon/$MenuName.png\" height=\"15\" width=\"15\"/>&nbsp;$MenuName</span></a>";
                        else
                            echo "<li><a href=\"$PageLink\" id=\"$MenuName\"><span><img src=\"./menu icon/$MenuName.png\" height=\"15\" width=\"15\"/>&nbsp;$MenuName</span></a>";
                    }
                    else
                        echo "<li><a href=\"$PageLink\" class=\"parent\" id=\"$MenuName\"><span>$MenuName</span></a>";
                }
                else
                    echo "<li><a href=\"$PageLink\"><span>$MenuName</span></a>";
                
            }
            $p=0;
            for($i=0;$i<$oResultHeader->num_rows;$i++)
            {
                if (!$visit[$i])
                {
                    if ($MenuName==$oResultHeader->rows[$i]['MotherMenu'])
                    {
                        $visit[$i]=true;
                        if($d>=1&&$p==0) echo "<ul>";
                        $p++;
                        $this->dfsMenu($oResultHeader->rows[$i]['MenuName'],$oResultHeader->rows[$i]['PageLink'],$oResultHeader,$visit,$d+1,$MotherMenu);
                    }
                }
            }
            if($d>=1&&$p!=0) echo "</ul>";
            if($d!=0) echo "</li>";
            
        }
        
        
        //Trial Balance
        function TrialBalance($FromDate,$ToDate)
        {
            $oBasic=new CAccount();
            $oCommon=new CCommon();
            
            $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND IsActive=1";
            $oResultTr=$oBasic->SqlQuery($sql);
            $html="<html><head><style>body { font-family:'Times New Roman', Times, serif; font-size:12px;}</style></head><body>
                    <table width='550' cellpadding='1' cellspacing='0'>
                   <tr><td colspan='4' align='center'><img src='".HOSTADD."image/baclogoy.jpg'  height='80' width='240'></td></tr>
                <tr>
                 <td colspan='4' align='center'>
                <h3 style='font-size:18px; text-align:center;'>Trial Balance <br/>
                As On ".$FromDate->format('M jS Y')." To ".$ToDate->format('M jS Y')."</h3></td></tr>
                <tr class='table_head'>
                    <td width='20%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000;'><strong>Accounts Code</strong></td>
                    <td width='50%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000;'><strong>Accounts Name</strong></td>
                    <td width='15%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000;'><strong>Debit</strong></td>
                    <td width='15%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000; border-right: solid 1px #000;'><strong>Credit</strong></td>
                </tr>";
            $TotalCredit=0;
            $TotalDebit=0;  
            $k=0;
            for($i=0;$i<$oResultTr->num_rows;$i++)
            {
                $COAID=$oResultTr->rows[$i]['HeadCode'];
                
                $sql="SELECT SUM(acc_transaction.Debit) AS Debit, SUM(acc_transaction.Credit) AS Credit FROM acc_transaction WHERE acc_transaction.IsAppove =1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')."' AND '".$ToDate->format('Y-m-d')."' AND COAID LIKE '$COAID%' ";
                
                $oResultTrial=$oBasic->SqlQuery($sql);
                $bg=$k&1?"#FFFFFF":"#E7E0EE";
                if($oResultTrial->row['Credit']+$oResultTrial->row['Debit']>0)
                {
                    $k++;
                    $html.="<tr>
                           <td  align='left' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oResultTr->rows[$i]['HeadCode']."</td>
                    <td  align='left' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oResultTr->rows[$i]['HeadName']."</td>";
            if($oResultTrial->row['Debit']>$oResultTrial->row['Credit'])
                {
                    $html.="<td  align='right' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oCommon->number_format($oResultTrial->row['Debit']-$oResultTrial->row['Credit'])."</td>
                     <td  align='right' bgcolor='$bg' style='border-top: solid 1px #000; border-right:#000 solid 1px; border-left: solid 1px #000;'>".$oCommon->number_format('0.00')."</td>";
                    $TotalDebit += $oResultTrial->row['Debit']-$oResultTrial->row['Credit'];
                }
                else
                {
                    $html.="<td  align='right' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oCommon->number_format('0.00')."</td>
                    <td align='right' bgcolor='$bg' style='border-top: solid 1px #000; border-right:#000 solid 1px; border-left: solid 1px #000;'>".$oCommon->number_format($oResultTrial->row['Credit']-$oResultTrial->row['Debit'])."</td>";
                    $TotalCredit += $oResultTrial->row['Credit']-$oResultTrial->row['Debit'];
                }
                 $html.="</tr>";
                }
            }
           
            $html.="<tr class='table_head'>
                    <td colspan='2' align='right' style='border-left: solid 1px #000; border-bottom: solid 1px #000; border-top: solid 1px #000;'><strong>Total</strong></td>
                 <td align='right' style='border-left: solid 1px #000; border-bottom: solid 1px #000; border-top: solid 1px #000;'><strong>".$oCommon->number_format($TotalDebit)."</strong></td>
              <td align='right' style='border: solid 1px #000;'><strong>".$oCommon->number_format($TotalCredit)."</strong></td>
                </tr>
                <tr> <td colspan='4' align='center'>&nbsp;</td> </tr>
                <tr> <td colspan='4' align='center'>&nbsp;</td> </tr>
                <tr> <td colspan='4' align='center'>&nbsp;</td> </tr>
                <tr>
                  <td colspan='4' align='center'>
                    <table width='100%' cellpadding='1' cellspacing='20'>
                        <tr>
                            <td width='15%' style='border-top: solid 1px #000;' align='center'>Prepared By</td>
                            <td width='15%' style='border-top: solid 1px #000;' align='center'>Accounts</td>
                            <td width='14%' style='border-top: solid 1px #000;' align='center'>CEO</td>
                            <td  width='19%' style='border-top: solid 1px #000;' align='center'>Chairman</td>
                        </tr>
                    </table>
                  </td>
                </tr>
            </table>
            </body>
            </html>";
            return $html;
        }
        
        //End Trial Balance
        
        
        function TrialBalanceWithOpening($FromDate,$ToDate)
        {
            $oBasic=new CAccount();
            $oCommon=new CCommon();
            
            $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND IsActive=1";
            $oResultTr=$oBasic->SqlQuery($sql);
            $html="<html><head><style>body { font-family:'Times New Roman', Times, serif; font-size:12px;}</style></head><body>
                    <table width='550' cellpadding='1' cellspacing='0'>
                   <tr><td colspan='4' align='center'><img src='".HOSTADD."image/baclogoy.jpg'  height='80' width='240'></td></tr>
                
                <tr>
                 <td colspan='4' align='center'>
                <h3 style='font-size:18px; text-align:center;'>Trial Balance With Opening<br/>
                As On ".$FromDate->format('M jS Y')." To ".$ToDate->format('M jS Y')."</h3></td></tr>
                <tr class='table_head'>
                    <td width='20%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000;'><strong>Accounts Code</strong></td>
                    <td width='50%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000;'><strong>Accounts Name</strong></td>
                    <td width='15%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000;'><strong>Debit</strong></td>
                    <td width='15%' align='center' style='border-left: solid 1px #000; border-top: solid 1px #000; border-right: solid 1px #000;'><strong>Credit</strong></td>
                </tr>";
            $TotalCredit=0;
            $TotalDebit=0;  
            $k=0;
            for($i=0;$i<$oResultTr->num_rows;$i++)
            {
                $COAID=$oResultTr->rows[$i]['HeadCode'];
                
                $sql="SELECT SUM(acc_transaction.Debit) AS Debit, SUM(acc_transaction.Credit) AS Credit FROM acc_transaction WHERE acc_transaction.IsAppove =1 AND VDate <= '".$ToDate->format('Y-m-d')."' AND COAID LIKE '$COAID%' ";
                
                $oResultTrial=$oBasic->SqlQuery($sql);
                $bg=$k&1?"#FFFFFF":"#E7E0EE";
                if($oResultTrial->row['Credit']!=$oResultTrial->row['Debit'])
                {
                    $k++;
                    $html.="<tr>
                           <td  align='left' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oResultTr->rows[$i]['HeadCode']."</td>
                    <td  align='left' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oResultTr->rows[$i]['HeadName']."</td>";
                if($oResultTrial->row['Debit']>$oResultTrial->row['Credit'])
                {
                    $html.="<td  align='right' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oCommon->number_format($oResultTrial->row['Debit']-$oResultTrial->row['Credit'])."</td>
                     <td  align='right' bgcolor='$bg' style='border-top: solid 1px #000; border-right:#000 solid 1px; border-left: solid 1px #000;'>".$oCommon->number_format('0.00')."</td>";
                    $TotalDebit += $oResultTrial->row['Debit']-$oResultTrial->row['Credit'];
                }
                else
                {
                    $html.="<td  align='right' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oCommon->number_format('0.00')."</td>
                    <td align='right' bgcolor='$bg' style='border-top: solid 1px #000; border-right:#000 solid 1px; border-left: solid 1px #000;'>".$oCommon->number_format($oResultTrial->row['Credit']-$oResultTrial->row['Debit'])."</td>";
                    $TotalCredit += $oResultTrial->row['Credit']-$oResultTrial->row['Debit'];
                }
                $html.="</tr>";
                }
            }
            if($k&1)
                $bg="#D4DF9F";
            else
                $bg="#FFFFFF";
            
            $ProfitLoss=$TotalDebit-$TotalCredit;
            $html.="<tr>
                    <td  align='left' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>&nbsp;</td>
                    <td  align='left' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>Profit-Loss</td>";
                if($ProfitLoss<0)
                {
                    $html.="<td  align='right' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oCommon->number_format(abs($ProfitLoss))."</td>
        <td  align='right' bgcolor='$bg' style='border-top: solid 1px #000; border-right:#000 solid 1px; border-left: solid 1px #000;'>".$oCommon->number_format('0.00')."</td>";
                    $TotalDebit += $ProfitLoss;
                }
                else
                {
                    $html.="<td  align='right' bgcolor='$bg' style='border-left: solid 1px #000; border-top: solid 1px #000;'>".$oCommon->number_format('0.00')."</td>
                    <td align='right' bgcolor='$bg' style='border-top: solid 1px #000; border-right:#000 solid 1px; border-left: solid 1px #000;'>".$oCommon->number_format(abs($ProfitLoss))."</td>";
                    $TotalCredit += $ProfitLoss;
                }
                $html.="</tr>";
            
           
            $html.="<tr class='table_head'>
                    <td colspan='2' align='right' style='border-left: solid 1px #000; border-bottom: solid 1px #000; border-top: solid 1px #000;'><strong>Total</strong></td>
                 <td align='right' style='border-left: solid 1px #000; border-bottom: solid 1px #000; border-top: solid 1px #000;'><strong>".$oCommon->number_format($TotalDebit)."</strong></td>
              <td align='right' style='border: solid 1px #000;'><strong>".$oCommon->number_format($TotalCredit)."</strong></td>
                </tr>
                <tr> <td colspan='4' align='center'>&nbsp;</td> </tr>
                <tr> <td colspan='4' align='center'>&nbsp;</td> </tr>
                <tr> <td colspan='4' align='center'>&nbsp;</td> </tr>
                <tr>
                  <td colspan='4' align='center'>
                    <table width='100%' cellpadding='1' cellspacing='20'>
                        <tr>
                            <td width='15%' style='border-top: solid 1px #000;' align='center'>Prepared By</td>
                            <td width='15%' style='border-top: solid 1px #000;' align='center'>Accounts</td>
                            <td width='28%' style='border-top: solid 1px #000;' align='center'>CEO</td>
                            <td  width='19%' style='border-top: solid 1px #000;' align='center'>Chairman</td>
                        </tr>
                    </table>
                  </td>
                </tr>
            </table>
            </body>
            </html>";
            return $html;
        }
        
        //End Trial Balance
        
        
        
        //Profit Loss
        function ProfitLossAssertCoa($HeadName,$HeadCode,$GL,$oResult,$visit,$value,$FromDate,$ToDate,$oBasic,$check)
        {
        $oCommon=new CCommon();
        if($value==1)
        { 
            $this->HTMLBalance.="<tr>
             <td colspan='2' style='font-size:16px; font-weight:bold; border-right:solid 1px #000; border-left:solid 1px #000; border-top:solid 1px #000;'>$HeadName</td></tr>";
        }
        elseif($value>1)
        {
            $COAID=$HeadCode;
            if($check)
            {
                $sqlF="SELECT SUM(acc_transaction.Debit) - SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE  VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%'";
            }
            else
            {
                $sqlF="SELECT SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND  VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%'";
            }
            $oResultAmountPreF=$oBasic->SqlQuery($sqlF);
            if($value==2)
            {
                if($check==1)
                {
                    $GLOBALS['TotalLiabilityF']=$GLOBALS['TotalLiabilityF']+$oResultAmountPreF->row['Amount'];
                }
                else
                {
                    $GLOBALS['TotalAssertF']=$GLOBALS['TotalAssertF']+$oResultAmountPreF->row['Amount'];
                }
            }
        if($oResultAmountPreF->row['Amount']!=0)
        {
        $this->HTMLBalance.="<tr >
            <td align='left' style='border-left:solid 1px #000; border-top:solid 1px #000; font-size:".(int)(16-$value)."px;".($value<=3?" font-weight:bold; ":" ")."'>$HeadName</td>
            <td align='right' style='border-left:solid 1px #000;  border-right:solid 1px #000; border-top:solid 1px #000; font-size:".(int)(16-$value)."px; '>".$oCommon->number_format($oResultAmountPreF->row['Amount'])."</td>
        </tr>";
        }
        }
        for($i=0;$i<$oResult->num_rows;$i++)
        {
            if (!$visit[$i]&&$GL==0)
            {
                if ($HeadName==$oResult->rows[$i]['PHeadName'])
                {
                    $visit[$i]=true;
                    $this->ProfitLossAssertCoa($oResult->rows[$i]['HeadName'],$oResult->rows[$i]['HeadCode'],$oResult->rows[$i]['IsGL'],$oResult,$visit,$value+1,$FromDate,$ToDate,$oBasic,$check);
                }
            }
        }
    }
        
        function ProfitLoss($oResultCompany,$FromDate,$ToDate,$oResultAsset,$oResultLiability)
        {
            $oCommon=new CCommon();
            $oBasic =new CAccount();
            $GLOBALS['TotalAssertF']=0;
            $GLOBALS['TotalLiabilityF']=0;
            
            $html="<html><head><style>body { font-family:'Times New Roman', Times, serif; font-size:11px;}</style></head><body>
            <table width='550' cellpadding='0' cellspacing='0'>
            <tr ><td align='center'><img height='80' width='240' src='".HOSTADD."image/baclogoy.jpg' /></td></tr>
            <tr ><td style='font-size:12px;' align='center'>".$oResultCompany->row['CompanyAddress']."</td></tr>
            <tr ><td style='font-size:16px;' align='center'><strong>Statement of Comprehensive Income</strong></td></tr>
            <tr > <td  style='font-size:14px;' align='center'>From ".$FromDate->format('jS F Y')." To ".$ToDate->format('jS F Y')."</td></tr>
            </table>";
            
            $html.="<table width='550' cellpadding='2' cellspacing='0'>
            <tr>
                <td width='85%' bgcolor='#E7E0EE' align='center' style='font-size:14px; border-left:solid 1px #000; border-top:solid 1px #000;'>Particulars</td>
                <td width='15%' bgcolor='#E7E0EE' align='center' style='font-size:14px; border-left:solid 1px #000; border-right:solid 1px #000;border-top:solid 1px #000;'>Amount</td>
            </tr>";
            
            for($i=0;$i<$oResultAsset->num_rows;$i++)
            {
                $Visited[$i] = false;
            }
            $this->HTMLBalance="";
            $this->ProfitLossAssertCoa("COA","0",0,$oResultAsset,$Visited,0,$FromDate,$ToDate,$oBasic,0);
            $html.=$this->HTMLBalance;
            $TotalAssetF=$GLOBALS['TotalAssertF'];
            
            $html.="<tr bgcolor='#E7E0EE'>
                <td align='right'><strong>Total Income</strong></td>
                <td align='right' style='border-style: double; border-left: none; border-right:none; border-top:none;'><strong >".$oCommon->number_format($TotalAssetF)."</strong></td>
            </tr>
            <tr>
                <td colspan='2' align='right'>&nbsp;</td>
            </tr>";
            for($i=0;$i<$oResultLiability->num_rows;$i++)
            {
                $Visited[$i] = false;
            }
            $this->HTMLBalance="";
            $GLOBALS['TotalLiability']=0;
            $this->ProfitLossAssertCoa("COA","0",0,$oResultLiability,$Visited,0,$FromDate,$ToDate,$oBasic,1);
            $html.=$this->HTMLBalance;
            $TotalLibilityF=$GLOBALS['TotalLiabilityF'];
            $html.="<tr>
                <td align='left' style='border-left:solid 1px #000; border-bottom:solid 1px #000; border-top:solid 1px #000;'>Profit-Loss ".($TotalAssetF>$TotalLibilityF?"(Profit)":"(Loss)")."</td>
                <td align='right' style='border:solid 1px #000;'>".$oCommon->number_format($TotalAssetF-$TotalLibilityF)."</td>
            </tr>
            <tr  bgcolor='#E7E0EE'>
                <td align='right'><strong>Total Expenses</strong></td>
                <td align='right' style='border-style: double; border-left: none; border-right:none; border-top:none;'><strong>".$oCommon->number_format($TotalAssetF)."</strong></td>
            </tr>
            <tr>
                  <td colspan='2' align='center'>
                    <table cellpadding='1' cellspacing='0' width='100%'>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr align='center'>
                            <td width='20%' style='text-decoration:overline'>Prepared By</td>
                            <td width='20%' style='text-decoration:overline'>Accounts</td>
                            <td width='20%' style='text-decoration:overline'>Authorized Signature</td>
                            <td width='20%' style='text-decoration:overline'>CEO</td>
                            <td width='20%' style='text-decoration:overline'>Chairman</td>
                        </tr>
                    </table>
                  </td>
                </tr>
            </table></body></html>";
            return $html;
        }
        //end profit loss
        
        //Balance Sheet
        function AssertCoa($HeadName,$HeadCode,$GL,$oResult,$visit,$value,$FirstDate,$SecondDate,$oBasic,$check)
        {
            $html=
            $oCommon=new CCommon();
            if($value==1)
            { 
                $this->HTMLBalance.="<tr><td colspan='4' style='font-size:15px; font-weight:bold'>$HeadName</td></tr>";
            }
            elseif($value>1)
            {
                $COAID=$HeadCode;
                if($check)
                {
                $sqlF="SELECT SUM(acc_transaction.Debit) - SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate <= '".$FirstDate->format('Y-m-d 00:00:00')."' AND COAID LIKE '$COAID%'";
                
                $sqlS="SELECT SUM(acc_transaction.Debit) - SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate <= '".$SecondDate->format('Y-m-d 00:00:00')."' AND COAID LIKE '$COAID%'";
                }
                else
                {
                    $sqlF="SELECT SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate <= '".$FirstDate->format('Y-m-d 00:00:00')."' AND COAID LIKE '$COAID%'";
                    
                    $sqlS="SELECT SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate <= '".$SecondDate->format('Y-m-d 00:00:00')."' AND COAID LIKE '$COAID%'";
                }
                $oResultAmountPreF=$oBasic->SqlQuery($sqlF); 
                $oResultAmountPreS=$oBasic->SqlQuery($sqlS); 
                if($value==2)
                {
                    if($check==1)
                    {
                        $GLOBALS['TotalAssertF']=$GLOBALS['TotalAssertF']+$oResultAmountPreF->row['Amount'];
                        $GLOBALS['TotalAssertS']=$GLOBALS['TotalAssertS']+$oResultAmountPreS->row['Amount'];
                    }
                    else
                    {
                        $GLOBALS['TotalLiabilityF']=$GLOBALS['TotalLiabilityF']+$oResultAmountPreF->row['Amount'];
                        $GLOBALS['TotalLiabilityS']=$GLOBALS['TotalLiabilityS']+$oResultAmountPreS->row['Amount'];
                    }
                }
                $R=198;
                $G=256;
                $B=256;
                $this->HTMLBalance.="<tr >
                    <td align='left' style='font-size:".(15-$value)."px;".($value<=3?"font-weight:bold; ":"")."; border-left:#000 solid 1px; border-right:#000 solid 1px;".($this->flag?"border-top:#000 solid 1px;":"")."' >$HeadName</td>
                    <td>&nbsp;</td>
                    <td align='right' style='border-left:#000 solid 1px; border-right:#000 solid 1px;".($this->flag?"border-top:#000 solid 1px;":"")."'>".$oCommon->number_format($oResultAmountPreF->row['Amount'])."</td>
                    <td align='right' style='border-right:#000 solid 1px;".($this->flag?"border-top:#000 solid 1px;":"")."'>".$oCommon->number_format($oResultAmountPreS->row['Amount'])."</td>
                </tr>";
                $this->flag=false;
                }
                
                for($i=0;$i<$oResult->num_rows;$i++)
                {
                    if (!$visit[$i]&&$GL==0)
                    {
                        if ($HeadName==$oResult->rows[$i]['PHeadName'])
                        {
                            $visit[$i]=true;
                        $this->AssertCoa($oResult->rows[$i]['HeadName'],$oResult->rows[$i]['HeadCode'],$oResult->rows[$i]['IsGL'],$oResult,$visit,$value+1,$FirstDate,$SecondDate,$oBasic,$check);
                        }
                    }
                }
        }
        
        
        function BalanceSheet($oResultCompany,$FirstDate,$SecondDate)
        {
            $oCommon=new CCommon();
            $oBasic =new CAccount();
            
            $GLOBALS['TotalAssertF']=0;
            $GLOBALS['TotalLiabilityF']=0;
            $GLOBALS['TotalAssertS']=0;
            $GLOBALS['TotalLiabilityS']=0;
            $sql="SELECT * FROM acc_coa WHERE acc_coa.HeadType='A' Order BY HeadCode";
            $oResultAsset=$oBasic->SqlQuery($sql);
            $sql="SELECT * FROM acc_coa WHERE acc_coa.HeadType='L' Order BY HeadCode ";
            $oResultLiability=$oBasic->SqlQuery($sql);
            
            
            
            $html="<html><head><style>body { font-family:'Times New Roman', Times, serif; font-size:11px;}</style></head><body>
            <table width='550' cellpadding='0' cellspacing='0'>
            <tr ><td align='center'><img height='80' width='240' src='".HOSTADD."image/baclogoy.jpg' /></td></tr>
            <tr ><td style='font-size:12px;' align='center'>".$oResultCompany->row['CompanyAddress']."</td></tr>
            <tr ><td style='font-size:16px;' align='center'><strong>Statement of Financial Position</strong></td></tr>
            <tr > <td  style='font-size:14px;' align='center'>As on ".$FirstDate->format('M jS Y')."</td></tr>
            </table>
            <table width='550' cellpadding='1' cellspacing='0'>
            <tr >
                <td width='60%' align='center' style='border:1px solid #000'><b>Particulars</b></td>
                <td width='2%' align='center'>&nbsp;</td>
                <td width='19%' align='center' style='border-left:1px solid #000; border-top:1px solid #000; border-bottom:1px solid #000;'><b>".$FirstDate->format("M jS Y")."</b></td>
                 <td width='18%' align='center' style='border-left:1px solid #000; border-top:1px solid #000; border-bottom:1px solid #000; border-right:1px solid #000;'><b>".$SecondDate->format("M jS Y")."</b></td>
            </tr>";
            
            $Visited=array();
            for($i=0;$i<$oResultAsset->num_rows;$i++)
            {
                $Visited[$i] = false;
            }
            $this->HTMLBalance="";
            $this->flag=true;
            $this->AssertCoa("COA","0",0,$oResultAsset,$Visited,0,$FirstDate,$SecondDate,$oBasic,1);
            $html.=$this->HTMLBalance;
            $TotalAssetF=$GLOBALS['TotalAssertF'];
            $TotalAssetS=$GLOBALS['TotalAssertS'];
            $html.="<tr>
                <td align='right' style='border-top:solid 1px #000'><strong>Total Assets</strong></td>
                <td>&nbsp;</td>
                <td align='right' style='border-bottom:solid 1px #000; border-top:solid 1px #000;'><strong>".$oCommon->number_format($TotalAssetF)."</strong></td>
                <td align='right' style='border-bottom:solid 1px #000; border-top:solid 1px #000;'><strong>".$oCommon->number_format($TotalAssetS)."</strong></td>
            </tr>";
            
            for($i=0;$i<$oResultLiability->num_rows;$i++)
            {
                $Visited[$i] = false;
            }
            $GLOBALS['TotalLiability']=0;
            $this->HTMLBalance="";
            $this->flag=true;
            $this->AssertCoa("COA","0",0,$oResultLiability,$Visited,0,$FirstDate,$SecondDate,$oBasic,0);
            $html.=$this->HTMLBalance;
            $TotalLibilityF=$GLOBALS['TotalLiabilityF'];
            $TotalLibilityS=$GLOBALS['TotalLiabilityS'];
           $html.="<tr >
                <td align='left' style='border-left:solid 1px #000; border-right:solid 1px #000;'>Profit-Loss</td>
                <td>&nbsp;</td>
                <td align='right' style='border-left:solid 1px #000; border-right:solid 1px #000;'>".$oCommon->number_format($TotalAssetF-$TotalLibilityF)."</td>
                <td align='right' style='border-right:solid 1px #000;'>".$oCommon->number_format($TotalAssetS-$TotalLibilityS)."</td>
            </tr>
            <tr>
                <td align='right' style='border-top:solid 1px #000;'><strong>Total Liabilities</strong></td>
                <td>&nbsp;</td>
                <td align='right' style='border-bottom:solid 1px #000; border-top:solid 1px #000;'><strong>".$oCommon->number_format($TotalAssetF)."</strong></td>
                <td align='right' style='border-bottom:solid 1px #000; border-top:solid 1px #000;'><strong>".$oCommon->number_format($TotalAssetS)."</strong></td>
            </tr>
            <tr>
                  <td colspan='4' align='center'>&nbsp;</td>
            </tr>
            <tr>
                  <td colspan='4' align='center'>
                    <table cellpadding='1' cellspacing='0' width='100%'>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr align='center'>
                            <td width='20%' style='text-decoration:overline'>Prepared By</td>
                            <td width='20%' style='text-decoration:overline'>Accounts Office</td>
                            <td width='20%' style='text-decoration:overline'>Authorized Signature</td>
                            <td width='20%' style='text-decoration:overline'>CEO</td>
                            <td width='20%' style='text-decoration:overline'>Chairman</td>
                        </tr>
                    </table>
                  </td>
                </tr>
            </table></body></html>";
            return $html;
                
        }
        //end Balance Sheet
        
        //Receive Payment
        function ReceivePayment($oResultCompany,$oIncome,$oExpence,$FromDate,$ToDate)
        {
            $oCommon=new CCommon();
            $html="<html><head><style>body { font-family:'Times New Roman', Times, serif; font-size:12px;}</style></head><body>
            <table width='550' cellspacing='0' cellpadding='2'>
              <tr>
                <td align='center'><img height='80' width='240' src='".HOSTADD."image/baclogoy.jpg' /></td>
                </tr>
                <tr>
                <td align='center'><p style='margin-bottom: 40px; margin-top: 0;'>".$oResultCompany->row['CompanyAddress']."</p></td>
                </tr>
                <tr align='center'>
                <td align='center' style=\"font:'Times New Roman',Times,serif;\"><b>Receipt &amp; Payment Statement On ".$FromDate->format('jS M Y')." To ".$ToDate->format('jS M Y')."</b></td></tr>
            </table> ";
            
            $html.="<table width='550' cellpadding='1' cellspacing='0'>
                <tr>
                <td width='8%'>&nbsp;</td>
                <td width='28%'>&nbsp;</td>
                <td width='14%'>&nbsp;</td>
                <td width='8%'>&nbsp;</td>
                <td width='28%'>&nbsp;</td>
                <td width='14%'>&nbsp;</td>
              </tr>
               <tr class='table_head'>
                <td colspan='3' align='center' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Received</strong></td>
                <td colspan='3' align='center' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'><strong>Payment</strong></td>
              </tr>
              <tr class='table_head'>
                <td align='center' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Code</strong></td>
                <td align='center' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Head Name</strong></td>
                <td align='center' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Amount</strong></td>
                <td align='center' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Code</strong></td>
                <td align='center' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Head Name</strong></td>
                <td align='center' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'><strong>Amount</strong></td>
              </tr>";
          
            $TotalIncome=0;
            $TotalExpence=0;
            $Cash=0;
            $Cheque=0;  
            $n=count($oIncome);
            $m=count($oExpence);
            
            for($i=0;$i<$n || $i<$m;$i++)
            { 
                $bg=$i&1?'#E7E0EE':'#FFFFFF';
         $html.="<tr class='table_data'>
              <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>".($i<$n?$oIncome[$i]->COAID:'')."&nbsp;</td>
              <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>".($i<$n?$oIncome[$i]->HeadName:'')."</td>
              <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>";
            if($i<$n)
            {
                //if($oIncome[$i]->COAID=="301")
                //{
                //   $oIncome[$i]->Amount=$oIncome[$i]->Amount+$TotalWaiver;
                //}
                $TotalIncome += $oIncome[$i]->Amount;
                $html.=$oCommon->number_format( $oIncome[$i]->Amount);
            }
            $html.="&nbsp;</td>
              <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>".($i<$m?$oExpence[$i]->COAID:'')."&nbsp;</td>
              <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>".($i<$m?$oExpence[$i]->HeadName:'')."&nbsp;</td>
              <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'>";
               if($i<$m) {$TotalExpence += $oExpence[$i]->Amount;
               $html.=$oCommon->number_format($oExpence[$i]->Amount);
               }
               $html.="&nbsp;</td>
            </tr>";
            }
        $Diff=$TotalIncome-$TotalExpence;
        if(abs($Diff)>1e-3)//.001 eps Check
        {
            if($TotalIncome>$TotalExpence)
            { 
              $html.="<tr class='table_data'>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Total Payment</strong></td>
              <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'><strong>".$oCommon->number_format($TotalExpence)."</strong>&nbsp;</td>
              </tr> 
              <tr class='table_data'>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
              <td align='left'  bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Net Profit</strong></td>
              <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'><strong>";
            $Amount=$TotalIncome-$TotalExpence;
            $TotalExpence+=$Amount;
            $html.=$oCommon->number_format($Amount)."</strong>&nbsp;</td>
          </tr>";
            }
            elseif($TotalIncome<$TotalExpence)
            {
            $html.="<tr class='table_data'>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Total Received</strong></td>
          <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>".$oCommon->number_format($TotalIncome)."</strong></td>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
          <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
        </tr>
         <tr class='table_data'>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>Net Loss</strong></td>
          <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'><strong>";
          $Amount=$TotalExpence-$TotalIncome;
          $TotalIncome+=$Amount;
          $html.=$oCommon->number_format($Amount)."</strong></td>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
          <td align='left' bgcolor='$bg' style='border-left:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
          <td align='right' bgcolor='$bg' style='border-left:1px solid #000; border-right:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
            </tr>";
            }
        }
         $html.="<tr class='table_data'>
          <td align='center' style='border-left:1px solid #000; border-bottom:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
           <td align='right' style='border-left:1px solid #000; border-bottom:1px solid #000; border-top:1px solid #000;'><strong>Total</strong></td>
           <td align='right' style='border-left:1px solid #000; border-bottom:1px solid #000; border-top:1px solid #000;'><strong>".$oCommon->number_format($TotalIncome)."</strong></td>
           <td align='right' style='border-left:1px solid #000; border-bottom:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
           <td align='right' style='border-left:1px solid #000; border-bottom:1px solid #000; border-top:1px solid #000;'>&nbsp;</td>
           <td align='right' style='border:1px solid #000;'><strong>".$oCommon->number_format( $TotalExpence)."</strong></td>
        </tr>

        <tr >
                    <td align='right' colspan='6' valign='bottom'>
                    <table cellpadding='1' cellspacing='0' width='100%'>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr><td colspan='5'>&nbsp;</td> </tr>
                        <tr align='center'>
                            <td width='20%' style='text-decoration:overline'>Prepared By</td>
                            <td width='20%' style='text-decoration:overline'>Accounts</td>
                            <td width='20%' style='text-decoration:overline'>Authorized Signature</td>
                            <td width='20%' style='text-decoration:overline'>CEO</td>
                            <td width='20%' style='text-decoration:overline'>Chairman</td>
                        </tr>
                    </table>
                  </td>
                </tr>
            </table></body></html>";
            return $html;
        }
        //End Receive Payment
        
        
        //Cash Flow
        function CashFlow($oResultCompany,$FromDate,$ToDate)
        {
            $oCommon=new CCommon();
            $oBasic =new CAccount();
            $html="<html><head><style>body { font-family:'Times New Roman', Times, serif; font-size:12px;}</style></head><body>
            <table width='550' cellspacing='0' cellpadding='2'>
              <tr>
                <td align='center'><img height='80' width='240' src='".HOSTADD."image/baclogoy.jpg' /></td>
                </tr>
                <tr>
                <td align='center'><p style='margin-bottom: 40px; margin-top: 0;'>".$oResultCompany->row['CompanyAddress']."</p></td>
                </tr>
                <tr align='center'>
                <td align='center' style=\"font:'Times New Roman',Times,serif;font-size:16px;\"><h3>Cash Flow Statement</h3></td></tr>
                <tr align='center'>
                <td align='center' style=\"font:'Times New Roman',Times,serif;\"><b>On ".$FromDate->format('jS M Y')." To ".$ToDate->format('jS M Y')."</b></td></tr>
            </table> ";
            
            $html.="<table width='550' cellpadding='1' cellspacing='0'>
                    <tr>
                        <td colspan='3' style='padding-left:10px'><strong>Opening Cash & Cash Equivalent:</strong></td>
                    </tr>
                    <tr class='table_head'>
                        <td colspan='3' style='padding-left:10px'><strong>Opening Cash & Cash Equivalent:</strong></td>
                    </tr>";
                    $sql="SELECT * FROM acc_coa WHERE acc_coa.IsTransaction=1 AND acc_coa.HeadType='A' AND acc_coa.IsActive=1 AND acc_coa.HeadCode LIKE '10201%' ";
                    $oResultAsset=$oBasic->SqlQuery($sql);
                    $TotalOpening=0;
                    for($i=0;$i<$oResultAsset->num_rows;$i++)
                    {
                        $COAID=$oResultAsset->rows[$i]['HeadCode'];
                        $sql="SELECT SUM(acc_transaction.Debit)- SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove =1 AND VDate < '".$FromDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%'";
                        $oResultAmountPre=$oBasic->SqlQuery($sql);
                        if($oResultAmountPre->row['Amount']!=0)
                        {
                $html.="<tr >
                <td align='left' style='padding-left:10px'>".$oResultAsset->rows[$i]['HeadName']."</td>
                <td>&nbsp;</td>
                <td align='right' style='padding-right:10px; border-left: solid 1px #000; border-right:solid 1px #000; ".($TotalOpening==0?"border-top: solid 1px #000;":"")."'>";

                    $Total=$oResultAmountPre->row['Amount'];
                    $html.=$oCommon->number_format($Total);
                    $TotalOpening+=$Total;
                $html.="</td>
                </tr>";
                    }
                }
                $html.="<tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style='border-top: solid 1px #000;'>&nbsp;</td>
                        </tr>
                        <tr>
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Total Opening Cash & Cash Equivalent</strong></td>
                        <td>&nbsp;</td>
                       <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalOpening)."</strong></td>
                    </tr>";
                    $html.="<tr class='table_head'>
                        <td colspan='3' style='padding-left:10px;text-decoration:underline'><b>Cashflow from Operating Activities</b></td>
                    </tr>";
                        $TotalCurrAsset=0;
                        $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '102%' AND IsActive=1 AND HeadCode NOT LIKE '10201%' AND HeadCode!='102' ";
                        $oResultCurrAsset=$oBasic->SqlQuery($sql);
                        for($s=0;$s<$oResultCurrAsset->num_rows;$s++)
                        {
                            $COAID=$oResultCurrAsset->rows[$s]['HeadCode'];
                            $sql="SELECT  SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%'
                            AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%') ";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                   $html.=" <tr >
                        <td align='left' style='padding-left:10px'>".$oResultCurrAsset->rows[$s]['HeadName']."</td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left:solid 1px #000; border-right:solid 1px #000; ".($TotalCurrAsset==0?'border-top: solid 1px #000;':'')."'>";
                        
                            $Total=$oResultAmount->row['Amount'];
                            $html.=$oCommon->number_format($Total);
                            $TotalCurrAsset+=$Total;
                        $html.="</td> </tr>";
                            }
                        }
                    $sql="SELECT  SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '4%'
                            AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%') ";
                    $oResultAmount=$oBasic->SqlQuery($sql);
                    if($oResultAmount->row['Amount']!=0)
                    {
                    $html.="<tr >
                        <td align='left' style='padding-left:10px'>Payment for Other Operating Activities</td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left:solid 1px #000; border-right:solid 1px #000;'>";
                                $Total=$oResultAmount->row['Amount'];
                               $html.=$oCommon->number_format($Total);
                                $TotalCurrAsset+=$Total; 
                      $html.="</td>
                    </tr>";
                    }
                    $html.="<tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td style='border-top: solid 1px #000;'>&nbsp;</td>
                    </tr>
                    <tr >
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Cash generated from Operating Activites before Changing in Opereating Assets &amp; Liabilities</strong></td>
                         <td>&nbsp;</td>
                       <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalCurrAsset)."</strong></td>
                    </tr>
                    
                    <tr class='table_head'>
                        <td colspan='3' style='padding-left:10px;text-decoration:underline'><b>Cashflow from Non Operating Activities</b></td>
                    </tr>";
                        $TotalCurrAssetNon=0;
                        $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '3%' AND IsActive=1 ";
                        $oResultCurrAsset=$oBasic->SqlQuery($sql);
                        for($s=0;$s<$oResultCurrAsset->num_rows;$s++)
                        {
                            $COAID=$oResultCurrAsset->rows[$s]['HeadCode'];
                            $sql="SELECT  SUM(acc_transaction.Credit) - SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%'
                            AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%') ";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                    $html.="<tr >
                            <td align='left' style='padding-left:10px'>".$oResultCurrAsset->rows[$s]['HeadName']."</td>
                            <td>&nbsp;</td>
                            <td align='right' style='padding-right:10px; border-left:solid 1px #000; border-right:solid 1px #000; ".($TotalCurrAssetNon==0?'border-top: solid 1px #000;':'')."'>";
                            $Total=$oResultAmount->row['Amount'];
                            $html.=$oCommon->number_format($Total);
                            $TotalCurrAssetNon+=$Total;
                            $html.="</td>
                        </tr>";
                            }
                        }
                    $html.="<tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td style='border-top: solid 1px #000;'>&nbsp;</td>
                    </tr>
                    <tr >
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Cash generated from Non Operating Activites before Changing in Opereating Assets &amp; Liabilities</strong></td>
                         <td>&nbsp;</td>
                       <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalCurrAssetNon)."</strong></td>
                    </tr>
                    <tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td >&nbsp;</td>
                    </tr>
                     <tr class='table_head'>
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Increase/Decrease in Operating Assets &amp; Liabilites</strong></td>
                       <td>&nbsp;</td>
                       <td align='right' style='padding-right:10px'>&nbsp;</td>
                  </tr>";
                        $TotalCurrLiab=0;
                        $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '20101%' AND HeadCode!=20101 AND IsActive=1";
                        $oResultLiab=$oBasic->SqlQuery($sql);
                        for($t=0;$t<$oResultLiab->num_rows;$t++)
                        {
                            $COAID=$oResultLiab->rows[$t]['HeadCode'];
                        //  print_r($oResultLiab->rows[$t]['HeadName']);
                            $sql="SELECT SUM(acc_transaction.Credit)-SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%')";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                    $html.="<tr >
                        <td align='left' style='padding-left:10px'>".$oResultLiab->rows[$t]['HeadName']."</td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left: solid 1px #000; border-right:solid 1px #000; ".($TotalCurrLiab==0?'border-top: solid 1px #000;':'')."'>";
                            $Total=$oResultAmount->row['Amount'];
                           $html.=$oCommon->number_format($Total);
                            $TotalCurrLiab+=$Total;
                       $html.=" </td>
                    </tr>";
                            }
                        }
                    $html.="<tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td style='border-top: solid 1px #000;'>&nbsp;</td>
                    </tr>
                    <tr >
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Total Increase/Decrease</strong></td>
                         <td>&nbsp;</td>
                       <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalCurrLiab)."</strong></td>
                    </tr>
                   <tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td >&nbsp;</td>
                    </tr>
                    <tr>
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Net Cash From Operating/Non Operating Activities</strong></td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalCurrAsset+$TotalCurrAssetNon+$TotalCurrLiab)." </strong></td>
                    </tr>
                     <tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td >&nbsp;</td>
                    </tr>
                    <tr class='table_head'>
                        <td colspan='3' style='padding-left:10px;text-decoration:underline'><b>Cash Flow from Investing Activities</b></td>
                    </tr>";
                        $TotalNonCurrAsset=0;
                        $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '101%' AND HeadCode!=101 AND IsActive=1";
                        $oResultNonCurrAsset=$oBasic->SqlQuery($sql);
                        for($t=0;$t<$oResultNonCurrAsset->num_rows;$t++)
                        {
                            $COAID=$oResultNonCurrAsset->rows[$t]['HeadCode'];
                        //  print_r($oResultNonCurrAsset->rows[$t]['HeadName']);
                            $sql="SELECT SUM(acc_transaction.Debit)-SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%')";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                    $html.="<tr >
                        <td align='left' style='padding-left:10px'>$oResultNonCurrAsset->rows[$t]['HeadName']; ?></td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left: solid 1px #000; border-right:solid 1px #000; ".($TotalNonCurrAsset==0?'border-top: solid 1px #000;':'')." '>";
           
                                $Total=$oResultAmount->row['Amount'];
                               $html.=$oCommon->number_format($Total);
                                $TotalNonCurrAsset+=$Total;
                        $html.="</td>
                    </tr>";
                            }
                        }
                     $html.="<tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td style='border-top: solid 1px #000;'>&nbsp;</td>
                    </tr>
                    <tr >
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Net Cash Used Investing Activities</strong></td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-top:solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalNonCurrAsset)."</strong></td>
                    </tr>
                     <tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td >&nbsp;</td>
                    </tr>
                   
                    <tr class='table_head'>
                        <td colspan='3' style='padding-left:10px;text-decoration:underline'><b>Cash Flow from Financing Activities</b></td>
                    </tr>";
                        $TotalNonCurrLiab=0;
                        $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '20102% AND IsActive=1";
                        $oResultNonCurrLiab=$oBasic->SqlQuery($sql);
                        for($t=0;$t<$oResultNonCurrLiab->num_rows;$t++)
                        {
                            $COAID=$oResultNonCurrLiab->rows[$t]['HeadCode'];

                        //  print_r($oResultNonCurrAsset->rows[$t]['HeadName']);
                            $sql="SELECT SUM(acc_transaction.Credit)-SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%')";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                    $html.="<tr >
                        <td align='left' style='padding-left:10px'>".$oResultNonCurrLiab->rows[$t]['HeadName']."</td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left: solid 1px #000; border-right:solid 1px #000; ".($TotalNonCurrLiab==0?'border-top: solid 1px #000;':'')."'>";
                                $Total=$oResultAmount->row['Amount'];
                                $html.=$oCommon->number_format($Total);
                                $TotalNonCurrLiab+=$Total;
                            $html.=" </td>
                    </tr>";
                            }
                        }
                        $TotalFund=0;
                        $sql="SELECT * FROM acc_coa WHERE IsGL=1 AND HeadCode LIKE '202%' AND IsActive=1";
                        $oResultFund=$oBasic->SqlQuery($sql);
                        for($t=0;$t<$oResultFund->num_rows;$t++)
                        {
                            $COAID=$oResultFund->rows[$t]['HeadCode'];
                        //  print_r($oResultNonCurrAsset->rows[$t]['HeadName']);
                            $sql="SELECT SUM(acc_transaction.Credit)-SUM(acc_transaction.Debit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove = 1 AND VDate BETWEEN '".$FromDate->format('Y-m-d')." 00:00:00' AND '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%' AND VNo in (SELECT VNo FROM acc_transaction WHERE COAID LIKE '10201%')";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                    $html.="<tr >
                        <td align='left' style='padding-left:10px'>".$oResultFund->rows[$t]['HeadName']."</td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left: solid 1px #000; border-right:solid 1px #000;'>";
                        $Total=$oResultAmount->row['Amount'];
                        $html.=$oCommon->number_format($Total);
                        $TotalFund+=$Total;
                       $html.="</td>
                    </tr>";
                            }
                        }
                   $html.="<tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td style='border-top: solid 1px #000;'>&nbsp;</td>
                    </tr>
                    <tr >
                        <td align='left' style='padding-left:10px;padding-right:10px'><strong>Net  Cash Used Financing Activities</strong></td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-top:solid 1px #000; border-bottom:solid 1px #000;'><strong>".$oCommon->number_format($TotalFund+$TotalNonCurrLiab)."</strong></td>
                    </tr>
                     <tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td >&nbsp;</td>
                    </tr>
                    <tr >
                        <td align='left' style='padding-left:10px;'><strong>Net Cash Inflow/Outflow (Profit Loss ".$oCommon->number_format($TotalCurrAsset+$TotalCurrAssetNon+$TotalCurrLiab+$TotalNonCurrAsset+$TotalFund+$TotalNonCurrLiab).")</strong></td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalCurrAsset+$TotalCurrAssetNon+$TotalCurrLiab+$TotalNonCurrAsset+$TotalFund+$TotalNonCurrLiab+$TotalOpening)."</strong></td>
                    </tr>
                     <tr >
                        <td >&nbsp;</td>
                         <td>&nbsp;</td>
                       <td >&nbsp;</td>
                    </tr>
                    
                    <tr class='table_head'>
                        <td colspan='3' style='padding-left:10px'><strong>Closing Cash & Cash Equivalent:</strong></td>
                    </tr>";
                        $sql="SELECT * FROM acc_coa WHERE acc_coa.IsTransaction=1 AND acc_coa.HeadType='A' AND acc_coa.IsActive=1 AND acc_coa.HeadCode LIKE '10201%' ";
                        $oResultAsset=$oBasic->SqlQuery($sql);
                        $TotalAsset=0;
                        for($i=0;$i<$oResultAsset->num_rows;$i++)
                        {
                            $COAID=$oResultAsset->rows[$i]['HeadCode'];
                            $sql="SELECT SUM(acc_transaction.Debit)- SUM(acc_transaction.Credit) AS Amount FROM acc_transaction INNER JOIN acc_coa ON acc_transaction.COAID = acc_coa.HeadCode WHERE acc_transaction.IsAppove =1 AND VDate <= '".$ToDate->format('Y-m-d')." 00:00:00' AND COAID LIKE '$COAID%'";
                            $oResultAmount=$oBasic->SqlQuery($sql);
                            if($oResultAmount->row['Amount']!=0)
                            {
                            $html.="<tr >
                        <td align='left' style='padding-left:10px'>".$oResultAsset->rows[$i]['HeadName']."</td>
                        <td>&nbsp;</td>
                        <td align='right' style='padding-right:10px; border-left: solid 1px #000; border-right:solid 1px #000;".($TotalAsset==0?'border-top: solid 1px #000;':'')."'>";
                         $Total=$oResultAmount->row['Amount'];
                         $html.=$oCommon->number_format($Total);
                         $TotalAsset+=$Total;
                        $html.="</td>
                    </tr>";
                            }
                        }
                    $html.="<tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td style='border-top: solid 1px #000;'>&nbsp;</td>
                    </tr>
                    <tr>
                     <td align='left' style='padding-left:10px;padding-right:10px'><strong>Total Closing Cash & Cash Equivalent</strong></td>
                      <td>&nbsp;</td>
                       <td align='right' style='padding-right:10px; border-top: solid 1px #000; border-bottom: solid 1px #000;'><strong>".$oCommon->number_format($TotalAsset)."</strong></td>
                    </tr>
                    <tr>
                      <td align='right' colspan='3'>&nbsp;</td>
                    </tr>
                    <tr >
                    <td align='right' colspan='3' valign='bottom'>
                    <table cellpadding='1' cellspacing='0' width='100%'>
                        <tr > <td colspan='5'>&nbsp;</td> </tr>
                        <tr > <td colspan='5'>&nbsp;</td> </tr>
                        <tr align='center'>
                            <td width='20%' style='text-decoration:overline'>Prepared By</td>
                            <td width='20%' style='text-decoration:overline'>Accounts Office</td>
                            <td width='20%' style='text-decoration:overline'>Authorized Signature</td>
                            <td width='20%' style='text-decoration:overline'>CEO</td>
                            <td width='20%' style='text-decoration:overline'>Chairman</td>
                        </tr>
                    </table>
                  </td>
                </tr>
            </table></body></html>";
            return $html;
        }
        //end Cash Flow
   };
?>