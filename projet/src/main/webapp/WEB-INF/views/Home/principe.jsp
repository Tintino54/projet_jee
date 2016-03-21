<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<tiles:insertDefinition name="myapp.homepage">
    <tiles:putAttribute name="title">Inscription</tiles:putAttribute>
    <tiles:putAttribute name="body">
		<script src="resources/js/datepicker.js"></script>
		<div id="body" class="container-fluid suscribe-bg">
			
		<div class="grid_9 long-text">
			<h3 id="chap-fondamentaux">Le financement participatif, c'est quoi?</h3>
			<p>
				Le financement participatif (ou crowdfunding en anglais) consiste à faire financer son projet par la foule. 
				<strong>Sur MyMajorCompany, des créateurs de projets de tous horizons peuvent présenter leur projet à des milliers d’internautes et collecter les fonds nécessaires à leur  réalisation. </strong> Ce procédé a permis à des dizaines de milliers de projets de voir le jour à travers le monde.
			</p>
			<h3>Comment ça marche ?</h3>
			<p>
				Chaque créateur définit le montant dont il a besoin pour réaliser son projet (sa jauge) et la durée de sa collecte. L'objectif du porteur de projet est de remplir sa jauge avant sa date de fin de collecte. Pour convaincre les internautes de le soutenir, il présente son projet et fixe les contreparties qu'il offrira à ses contributeurs si son objectif de collecte est atteint.
			</p>
			<h3>Que se passe-t-il si le projet n’arrive pas à 100% à la fin de sa période de collecte ?</h3>
			<div class="clearfix">
				<div class="pull-right panel panel-default" style="width: 300px; line-height: 11px; padding-top: 8px; box-shadow: none;">
					<div class="illustration panel-body">
						<ul class="projects-list-v2 gallery-v2">
							<li class="project " style="margin: 0px;">
							<div class="block clearfix">
								<div class="presentation">
									<div class="presentation-inner">
										<div class="project-gauge">
											<div class="gauge fullscale clearfix" style="height: 45px;">
												<div class="graph fullscale">
													<span class="pic-goal secondary-goal">
													100%
													</span>
													<div style="width:38.714285714286%" class="fill">
													</div>
												</div>
												<p class="infos invested">
		1&nbsp;355&nbsp;€
													<br>
			sur 3&nbsp;500&nbsp;€
												</p>
												<p class="infos timeleft" data-countdown="">
													un jour restant
												</p>
											</div>
										</div>
									</div>
								</div>
							</div>
							</li>
						</ul>
					</div>
				</div>
				<div style="width: 380px;">
					<p>
						Si le projet n’a pas réuni le montant de sa jauge à la fin de sa période de collecte, les contributeurs récupèrent leur participation. Elle est automatiquement versée sur leur 
						<strong>Crédit</strong>.
					</p>
					<p>
				Ils peuvent utiliser ce crédit pour participer à un autre projet ou en demander le remboursement sur leur compte en banque (seuls les frais de transaction, dont le mode de calcul est précisément exposé à l’article 1 de nos conditions générales d’utilisation, ne sont pas remboursés).
					</p>
				</div>
				<h3>Et si le projet atteint son objectif avant la fin de sa période de collecte ?</h3>
				<div class="clearfix">
					<div class="pull-right panel panel-default" style="width: 300px; line-height: 11px; padding-top: 8px; box-shadow: none;">
						<div class="illustration panel-body">
							<ul class="projects-list-v2 gallery-v2">
								<li class="project " style="margin: 0px;">
								<div class="block clearfix">
									<div class="presentation">
										<div class="presentation-inner">
											<div class="project-gauge">
												<div class="gauge fullscale clearfix" style="height: 45px;">
													<div class="graph overflow">
														<div class="fill-completed" style="width:33.333333333333%;">
															<span class="pic-goal auto-tooltip">
															100%
															</span>
														</div>
														<span class="pic-goal secondary-goal">
														300%
														</span>
														<div style="width:71.6%" class="fill">
														</div>
													</div>
													<p class="infos invested">
		10&nbsp;740&nbsp;€
														<br>
			sur 5&nbsp;000&nbsp;€
													</p>
													<p class="infos timeleft" data-countdown="">
														<span class="moment-time-future" data-attribute="2014-10-05 11:13:17">il y a 533 jours</span>
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
								</li>
							</ul>
						</div>
					</div>
					<div style="width: 380px;">
						<p>
						 Les internautes peuvent soutenir un projet tout au long de sa période de collecte même si sa jauge est déjà remplie. Il est fréquent que des projets dépassent donc les 100%.
						</p>
						<p>
				La plupart du temps, le porteur du projet explique comment sera dépensé le montant allant au-delà de sa jauge. Ce dernier doit également s’assurer qu’il pourra délivrer les contreparties associées aux participations supplémentaires.
						</p>
					</div>
				</div>
				<h3 id="chap-annulermaparticipation">Puis-je annuler ma participation en cours de route ? </h3>
				<p>
Tant qu’un projet n'a pas atteint son objectif de collecte (les 100% de sa jauge), ses contributeurs peuvent à tout moment annuler leur participation. Elle est versée sur leur Crédit et ils peuvent en demander le remboursement sur leur compte en banque (seuls les frais de transaction, dont le mode de calcul est précisément exposé à l’article 1 de nos conditions générales d’utilisation, ne sont pas remboursés). A contrario, lorsque l'objectif de collecte est atteint, les contributions deviennent définitives et ne peuvent donner lieu à un remboursement a posteriori.
					<br>
Vous bénéficiez de plus en tant que consommateur d’un droit de rétractation dont les modalités sont exposées en détail à l’article 12 de nos Conditions Générales d’Utilisation.
				</p>
				<h3 id="chap-resonsablerealisation">Qui est responsable de la réalisation du projet et de la livraison des contreparties ?</h3>
				<p>
C'est le porteur de projet qui est responsable de la bonne réalisation du projet et de la livraison de ses contreparties. Son nom est systématiquement affiché en haut de sa page projet et il peut être contacté facilement par ses contributeurs grâce au bouton "envoyer un message" situé sur sa page à droite de sa photo de profil.
				</p>
				<h3>En savoir un peu plus sur MyMajorCompany</h3>
				<p>
				Nous sommes une équipe d'une quinzaine de salariés basée à Paris. 
					<a href="/about/team">Découvrez les membres de l’équipe ici</a> !
				</p>
				<p>
				Depuis notre lancement, les projets présents sur notre site ont réuni plus de 13 millions d'euros de participation auprès de 70.000 internautes ce qui est un record en Europe. MyMajorCompany compte aujourd’hui plus de 340.000 membres dont 200 000 abonnés à sa newsletter qui relaie régulièrement les meilleurs projets du site.
				</p>

<p> Découvrez MyMajorCompany en vidéo !</p>

<iframe src="//www.youtube.com/embed/WiTLRS6wAgs" allowfullscreen="" frameborder="0" height="411" width="100%">
</iframe>
				<h3>J'ai une question, qui contacter ?</h3>
				<p>
				Ca dépend de la question ! 
					<br>
Nous avons conçu le « Comment ça marche ? » pour qu’il réponde à un maximum de vos interrogations donc vérifiez bien que votre réponse ne s’y trouve pas déjà en utilisant le menu à droite de l’écran.
				</p>
				<p>
Si vous n’y trouvez pas votre réponse, posez-nous votre question directement sur notre 
					<a href="/contact">interface de contact</a>.
				</p>
				<h3>Le crowdfunding est-il encadré par une législation ? </h3>
				<p>
					 Oui, le crowfunding est désormais régi par <a href="http://www.legifrance.gouv.fr/affichTexte.do?cidTexte=JORFTEXT000029008408" target="_blank">l’ordonnance n°2014-559 du 30 mai 2014 relative au financement participatif</a>. Le 30 septembre 2014, l’AMF et l’ACPR ont également publié un <a href=" http://www.amf-france.org/Publications/Guides/Professionnels.html?xtor=RSS-7&amp;docId=workspace%3A%2F%2FSpacesStore%2Fa784a82d-295c-4371-8d04-f9b51895d370" target="_blank">guide d'information publié par l’AMF et l’ACPR</a>. Nous vous encourageons à les consulter !
				</p>
			</div>
			<!-- / -->
		</div>
		<!-- / template-row-inner -->
	
		</div>
    </tiles:putAttribute>
</tiles:insertDefinition>