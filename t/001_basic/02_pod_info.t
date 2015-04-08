#########################
# change 'tests => 1' to 'tests => last_test_to_print';

use Test::More tests => 1;
use Test::More::UTF8;
use Test::Deep;
use POD2::RU;
#########################

# Insert your test code below, the Test::More module is use()ed here so read
# its man page ( perldoc Test::More ) for help writing this test script.
my $pod2 = POD2::RU->new();
cmp_deeply($pod2->pod_info(),{
		        perl            => '5.18.0.1',
			        perlintro       => '5.18.0.1',
				        perlrun         => '5.18.0.1',
					        a2p             => '5.18.0.1',
						        perlbook        => '5.18.0.1',
							        perldoc         => '5.18.0.1',
								        perlpragma      => '5.18.0.1',
									        perlstyle       => '5.18.0.1',
										        perlcheat       => '5.18.0.1',
											        perlnewmod      => '5.18.0.1',
												        perlrequick     => '5.18.0.1',
													        perlreref       => '5.18.0.1',
														        perlunicode     => '5.18.0.1',
															        perlretut       => '5.18.0.1',
																        perlreguts      => '5.18.0.1',
																	        perlrecharclass => '5.18.0.1',
																		        perlrebackslash => '5.18.0.1',
																			        perlreapi       => '5.18.0.1',
																				        perlre          => '5.18.0.1',
																					        perlsecret      => '5.18.0.1',
																						        perlreapi       => '5.18.0.1',
																							    }, 'Test perldoc');
