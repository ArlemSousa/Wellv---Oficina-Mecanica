<?php

	include "banco.php";
	include "util.php";

	$dtcada = date('Y-m-d');
	$Flag = true;

	$aCditem=$_POST["cditem"];
	$aQtitem=$_POST["qtitem"];
	$aVlitem=$_POST["vlitem"];

	$cdforn = $_POST["cdforn"];
	$dtpedi = $_POST["dtpedi"];
	$vlpedi = $_POST["vlpedi"];
	$vlpago = $_POST["vlpago"];

	$vlpedi = str_replace(".","",$vlpedi);
	$vlpedi = str_replace(",",".",$vlpedi);

	$vlpago = str_replace(".","",$vlpago);
	$vlpago = str_replace(",",".",$vlpago);

	$qtitem = 0;
	for ($f =1; $f <= 10; $f++) {
		$primeiro = $aCditem[$f];
		$aPrimeiro = explode("|", $aCditem[$f]);
		if ($aPrimeiro[0] !== 'X'){
			$qtitem++;
		}
	}

	if ( $qtitem <= 0) {
		$demens = "É preciso informar os itens do pedido!";
		$detitu = "Wellv auto center&copy; | Cadastro de Pedidos";
		header('Location: mensagem.php?demens='.$demens.'&detitu='.$detitu);
		$Flag=false;
	}

	if ( empty($cdforn) == true) {
		$demens = "É preciso informar o fornecedor!";
		$detitu = "Wellv auto center&copy; | Cadastro de Pedidos";
		header('Location: mensagem.php?demens='.$demens.'&detitu='.$detitu);
		$Flag=false;
	}

	if ( empty(strtotime($dtpedi)) == true) {
		$demens = "É preciso informar a data do pedido!";
		$detitu = "Wellv auto center&copy; | Cadastro de Pedidos";
		header('Location: mensagem.php?demens='.$demens.'&detitu='.$detitu);
		$Flag=false;
	}


	if ($Flag == true) {

		//campos da tabela
		$aNomes=array();
		$aNomes[]= "cdforn";
		$aNomes[]= "dtpedi";
		$aNomes[]= "vlpedi";
		$aNomes[]= "decont";
		$aNomes[]= "dtentr";
		$aNomes[]= "dtpago";
		$aNomes[]= "vlpago";
		$aNomes[]= "deobse";
		$aNomes[]= "flativ";
		$aNomes[]= "dtcada";
		$aNomes[]= "cdform";
		$aNomes[]= "qtform";


		//dados da tabela
		$aDados=array();
		$aDados[]= $_POST["cdforn"];
		$aDados[]= $_POST["dtpedi"];
		$aDados[]= $vlpedi;
		$aDados[]= $_POST["decont"];
		$aDados[]= $_POST["dtentr"];
		$aDados[]= $_POST["dtpago"];
		$aDados[]= $vlpago;
		$aDados[]= $_POST["deobse"];
		$aDados[]= 'Sim';
		$aDados[]= $dtcada;
		$aDados[]= $_POST["cdform"];
		$aDados[]= $_POST["qtform"];

		IncluirDados("pedidos", $aDados, $aNomes);

		$aTrab= ConsultarDados("", "", "","select max(cdpedi) cdpedi from pedidos where cdforn = '{$cdforn}' and dtpedi = '{$dtpedi}'");
		$cdpedi = $aTrab[0]["cdpedi"];
		$nritem=1;
		for ($f =1; $f <= 10; $f++) {
			$primeiro = $aCditem[$f];
			$aPrimeiro = explode("|", $aCditem[$f]);
			if ($aPrimeiro[0] !== 'X'){
				$cdpeca = $aPrimeiro[2];
				$qtpeca = $aQtitem[$f];
				$vlpeca = $aVlitem[$f];

				//$vlpeca = str_replace(".","",$vlpeca);
				//$vlpeca = str_replace(",",".",$vlpeca);

				$vltota = $qtpeca*$vlpeca;

				$aNomes=array();
				$aNomes[]= "cdpedi";
				$aNomes[]= "nritem";
				$aNomes[]= "cdpeca";
				$aNomes[]= "qtpeca";
				$aNomes[]= "vlpeca";
				$aNomes[]= "vltota";

				$aDados=array();
				$aDados[]= $cdpedi;
				$aDados[]= $nritem++;
				$aDados[]= $cdpeca;
				$aDados[]= $qtpeca;
				$aDados[]= $vlpeca;
				$aDados[]= $vltota;

				IncluirDados("pedidosi", $aDados, $aNomes);

			}
		}

		$aTrab= ConsultarDados("", "", "","select * from pedidos where cdpedi = '{$cdpedi}'");
		$dtpedi = $aTrab[0]["dtpedi"];
		$qtform = $aTrab[0]["qtform"];

		for ($f =1; $f <= $qtform; $f++) {
			$vlcont = $aTrab[0]["vlpedi"]/$qtform;
			//$vlcont = number_format($vlcont,2,',','.');

		    $dtcont=strtotime($dtpedi . "+ {$f} months");
		    $dtcont=date("Y-m-d", $dtcont);

			$aNomes=array();
			$aNomes[]= "decont";
			$aNomes[]= "dtcont";
			$aNomes[]= "vlcont";
			$aNomes[]= "cdtipo";
			$aNomes[]= "cdquem";
			$aNomes[]= "cdorig";
			$aNomes[]= "flativ";
			$aNomes[]= "dtcada";

			$aDados=array();
			$aDados[]= 'Pedido a Pagar';
			$aDados[]= $dtcont;
			$aDados[]= $vlcont;
			$aDados[]= 'Pagar';
			$aDados[]= $aTrab[0]["cdforn"];
			$aDados[]= $aTrab[0]["cdpedi"];
			$aDados[]= 'Sim';
			$aDados[]= $dtcada;

			IncluirDados("contas", $aDados, $aNomes);

		}

		$demens = "Cadastro efetuado com sucesso!";
		$detitu = "Wellv auto center&copy; | Cadastro de Pedidos";
		$devolt = "pedidos.php";
		header('Location: mensagem.php?demens='.$demens.'&detitu='.$detitu.'&devolt='.$devolt);
	}

?>